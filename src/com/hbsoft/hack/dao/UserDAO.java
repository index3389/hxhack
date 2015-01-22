/**
 * 
 */
package com.hbsoft.hack.dao;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hbsoft.hack.interfaces.UserManager;
import com.hbsoft.hack.util.NewSession;
import com.hbsoft.hack.vo.FatieVO;
import com.hbsoft.hack.vo.HackuserVO;
import com.hbsoft.hack.vo.HuitieVO;
import com.hbsoft.hack.vo.LapVO;

/**
 * @时间 2009-12-17 上午02:51:01
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class UserDAO extends HibernateDaoSupport implements UserManager 
{
	
	public boolean checkUser(String user,String pass)
	{
		boolean is = false;
		
		String hql = "from HackuserVO u where u.hackName=? and u.hackPass=?";
		
		int len =  this.getHibernateTemplate().find(hql, new String[]{user,pass}).size();
		
		if(len == 1)
		{
			is = true;
		}
		
		return is;
	}
	
	
	public boolean saveUser(HackuserVO userVO)
	{
		boolean is = false;
		
		try
		{
			this.getHibernateTemplate().save(userVO);
			
			this.getHibernateTemplate().flush();
			
			is = true;
			
		}catch(Exception e)
		{		
			e.printStackTrace();					
		}		
		
		return is;
	}
	
	public boolean isRegister(String hackName)
	{
		
		boolean is = false;
		
		String hql = "from HackuserVO u where u.hackName=?";
		
		int len =  this.getHibernateTemplate().find(hql,hackName).size();
		
		if(len == 1)
		{
			is = true;
		}
		
		return is;		
	}
	
	public int getTadayMax()
	{

		java.sql.Date d = new java.sql.Date(new Date().getTime());
		
		Session session = NewSession.getSession();	
		Query query = session.createQuery("from HackuserVO a where a.createTime=:u");
		query.setDate("u",d);
		
		return query.list().size();
	}
	
	public boolean backPass(String[] info)
	{
		boolean is = false;
		
		String n = info[0];
		String m = info[1];
		String q = info[2];
		String a = info[3];
				
		String hql = "from HackuserVO u where u.hackName=? and u.hackMail=? and u.question=? and answer=?";
		
		String[] str = {n,m,q,a};
		
		int len =  this.getHibernateTemplate().find(hql,str).size();
		
		
		if(len == 1)
		{
			is = true;
		}
		
		return is;
	}
	
	public boolean updatepass(String user,String pass)
	{
		boolean is = false;
		
		String hql = "from HackuserVO u where u.hackName=:n";

		Session session  = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		try
		{
			Query query = session.createQuery(hql);
			query.setString("n",user);
			
			HackuserVO userVO = (HackuserVO)query.uniqueResult();
			userVO.setHackPass(pass);
		
			tran.commit();
			
			is = true;
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
			tran.rollback();
		}
		
		session.close();
		
		return is;
	}
	
	public HackuserVO getUserByName(String hackName)
	{
		HackuserVO userVO = new HackuserVO();
		userVO.setHackName(hackName);
		
		userVO = (HackuserVO)this.getHibernateTemplate().findByExample(userVO).get(0);
		
		return userVO;
	}
	
	public boolean checkEmail(String mail)
	{
		boolean is = false;
		
		HackuserVO user = new HackuserVO();
		user.setHackMail(mail);
		
		int len = this.getHibernateTemplate().findByExample(user).size();
		
		if(len > 0)
		{
			is = true;
		}
		
		return is;
	}
	
	public boolean updateimg(String hackName,String img)
	{
		boolean is = false;
		
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			
			String sql = "from HackuserVO as h where h.hackName = ?";
			
			Query query = session.createQuery(sql);
			query.setString(0,hackName);
			
			List list = query.list();
			
			HackuserVO user = (HackuserVO)list.get(0);
			
			user.setHackimg(img);
			
			tran.commit();
			
			is = true;
			
			
		}catch(Exception e)
		{
			is = false;
			tran.rollback();
			e.printStackTrace();
		}
		
		return is;
	}
	
	public boolean del_user(int id)
	{
		boolean is = true;

		
		String sql = "from HackuserVO as h where h.userId = " + id; 
		
		List list = this.getHibernateTemplate().find(sql);
		
		HackuserVO user = (HackuserVO)list.get(0);
		
		this.getHibernateTemplate().delete(user);
			
		
		return is;
	}
	
	public int getalltie()
	{
		return this.getHibernateTemplate().find("from FatieVO").size();
	}
	
	public List getTie(int begin,int max)
	{
		
		String sql = "from FatieVO as f order by f.tieid desc";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(begin);
		query.setMaxResults(max);
		
		return query.list();
		
	}
	
	public boolean del_tie(int id)
	{
		boolean is = true;

		try
		{
			
			String sql = "from FatieVO as h where h.tieid = " + id; 
			
			String hsql = "from HuitieVO as h where h.tieid = " + id; 
			
			List list2 = this.getHibernateTemplate().find(hsql);
			
			for(int i=0;i<list2.size();i++)
			{
				HuitieVO hui = (HuitieVO)list2.get(i);
				this.getHibernateTemplate().delete(hui);
			}
			
			List list = this.getHibernateTemplate().find(sql);
			
			FatieVO user = (FatieVO)list.get(0);
			
			this.getHibernateTemplate().delete(user);
			
		}catch(Exception e)
		{
			is = false;
			e.printStackTrace();
		}
				
		return is;
	}
	
	public List getall_fatie(String hackName)
	{
		FatieVO tie = new FatieVO();
		tie.setHackName(hackName);
		return this.getHibernateTemplate().findByExample(tie);
	}	
	public boolean getall_huitie(int tieid)
	{
		HuitieVO hui = new HuitieVO();
		hui.setTieid(new Integer(tieid));	
		List list =  this.getHibernateTemplate().findByExample(hui);
		if(list.size() > 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public boolean update_best(String type,String id)
	{
		
		
		boolean is = false;
		String sql = "from FatieVO as f where f.tieid = "+Integer.parseInt(id);
		Session sion = NewSession.getSession();
		
		Transaction tran = sion.beginTransaction();
		
		tran.begin();
		
		try
		{
			FatieVO tie = (FatieVO)sion.createQuery(sql).uniqueResult();
			tie.setBest(Integer.parseInt(type));
			tran.commit();
			is = true;
		}catch(Exception e)
		{
			tran.rollback();
			e.printStackTrace();
		}finally
		{
			sion.close();
		}
		return is;
	}
	
	
	public String getLapName(int type)
	{
		String str = null;
		
		String sql = "from LapVO as l where l.lapId = "+type;
		
		List list = this.getHibernateTemplate().find(sql);
		
		LapVO lap = (LapVO)list.get(0);
		
		str = lap.getLapName();
		
		return str;
	}	
	
}















