/**
 * 
 */
package com.hbsoft.hack.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hbsoft.hack.interfaces.BBSManager;
import com.hbsoft.hack.util.NewSession;
import com.hbsoft.hack.vo.FatieVO;
import com.hbsoft.hack.vo.HackuserVO;
import com.hbsoft.hack.vo.HuitieVO;

/**
 * @9:12:30 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class BBSDAO extends HibernateDaoSupport implements BBSManager
{

	public List getInvitation(int type,int begin, int end) 
	{
		
		List list = new ArrayList();
		
		String sql = "from FatieVO as f where f.type =" + type + " order by f.tieid desc";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(begin);
		query.setMaxResults(end);
		
		list = query.list();
		
		return list;
	}

	public FatieVO getInvitationById(Integer id)
	{	
		
		FatieVO tie = (FatieVO)this.getSession().get(FatieVO.class,id);	
		
		return tie;
	}

	public boolean saveInvitation(Object obj)
	{
		
		boolean is = false;
		
		try
		{
			
			this.getHibernateTemplate().save(obj);
			
			is = true;
			
		}catch(Exception e)
		{
			System.out.println("保存时发生错误，错误是" + e);
			e.printStackTrace();
		}
		
		return is;
	}

	public List getALLhuitie(int id)
	{
		
		//根据发帖的ID得到所有的回帖
		List list = new ArrayList();
		
		String sql = "from HuitieVO as h where h.tieid = " + id;		
		
		list = this.getHibernateTemplate().find(sql);
		
		return list;
	}
	
	public boolean add_two(String hackName,int munber)
	{
		boolean is = false;
		
		Session session = NewSession.getSession();
		
		String sql = "from HackuserVO as h where h.hackName = '" + hackName + "'";
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			Query query = session.createQuery(sql);
			
			HackuserVO userVO = (HackuserVO)query.uniqueResult();
			
			if(userVO != null)
			{
				int temp = userVO.getIntegral();
				int temp2 = userVO.getFatiecount();
				userVO.setIntegral(temp + munber);
				userVO.setFatiecount(temp2 + 1);
			}
			
			this.getSession().flush();
			
			tran.commit();
			
			is = true;
		}catch(Exception e)
		{
			System.out.println("发生错误，" + e);
			e.printStackTrace();
			tran.rollback();
		}
		
		session.close();
		
		return is;
	}
	
	public boolean add_one(String hackName,int munber)
	{
		boolean is = false;
		
		HackuserVO userVO = new HackuserVO();
		userVO.setHackName(hackName);
		
		String sql = "from HackuserVO as h where h.hackName = '"+hackName+"'";
		System.out.println(sql);
		
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			Query query = session.createQuery(sql);
			
			userVO = (HackuserVO)query.uniqueResult();
			
			int temp = userVO.getIntegral();
			
			userVO.setIntegral(temp + 1);
			
			int hui = userVO.getHuitiecount();
			
			userVO.setHuitiecount(hui + 1);
			
			tran.commit();
			
			is = true;
			
		}catch(Exception e)
		{
			System.out.println("发生错误，" + e);
			e.printStackTrace();
			tran.rollback();
		}
		
		session.close();
		
		return is;
	}

	public List getInvitation(int type, int count)
	{
		
		List list = new ArrayList();
		
		String sql = "from FatieVO as f where f.type =" + type + " order by f.tieid desc";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(0);
		query.setMaxResults(count);
		
		list = query.list();
		
		return list;
	}
	
	public int getALL(int type)
	{
		List list = new ArrayList();
		
		FatieVO tie = new FatieVO();
		tie.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(tie);
		
		return list.size();
	}
	
	public List getnews_invitation(int count)
	{
		
		List list = new ArrayList();
		
		String sql = "from FatieVO as f order by f.tieid desc";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(0);
		query.setMaxResults(count);
		
		list = query.list();
		
		return list;
		
	}
	
	public List gethot_invitation(int count)
	{
		

		List list = new ArrayList();
		
		String sql = "from FatieVO as f order by f.count desc";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(0);
		query.setMaxResults(count);
		
		list = query.list();
		
		return list;
		
	}
	
	public List info_taday(int type)
	{
		
		String begin = this.date_sql() + " 00:00:00";
		String end = this.date_sql() + " 23:59:59";
		
		String sql = "from FatieVO as f where f.type="+type+" and f.createTime between '"+begin+ "' and '"+end+"'";
		
		System.out.println(sql);
		
		Query query = this.getSession().createQuery(sql);
		
		return query.list();
	}
	
	public String date_sql()
	{
		String msg = "";
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		msg = format.format(new Date());
		
		return msg;
	}
	
	public boolean setup_last(int id,String hackName)
	{
		boolean is = false;
		
		String sql = "from FatieVO as f where f.tieid = " + id;
		
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			
			Query query = session.createQuery(sql);
			
			FatieVO tie = (FatieVO)query.uniqueResult();
			
			tie.setLasthui(hackName);
			int temp = tie.getCount();
			tie.setCount(temp + 1);
			
			tran.commit();
			
			is = true;
			 
		}catch(Exception e)
		{
			System.out.println("发生错误，设置失败" + e);
			e.printStackTrace();
			tran.rollback();
		}
		
		session.close();
		
		return is;
	}
	
	public List search(String content)
	{
		String sql = "from FatieVO as f where f.title like '%" + content + "%'";
		
		System.out.println(sql);
		
		return this.getHibernateTemplate().find(sql);
	}

	public List getbest_invitation(int count)
	{
		
		List list = new ArrayList();
		
		String sql = "from FatieVO as f where f.best = 1";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(0);
		query.setMaxResults(count);
		
		list = query.list();
		
		return list;
	}	
	
	
	@SuppressWarnings("deprecation")
	public List getListByDate(int type ,int max)
	{
		List list = new ArrayList();
		
		String sql = "from FatieVO as f where f.createTime between ? and ? order by f.createTime";
		
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();//开启事务
		
		Query query = session.createQuery(sql);
		
		Date date = new Date();
		
		int h = date.getHours();
		
		if(type == 1)
		{
			query.setString(1,this.getdate(date));
			date.setHours(h - 1);
			query.setString(0,this.getdate(date));
		}
		else if(type == 2)
		{
			query.setString(1,this.getdate(date));
			date.setHours(h - 24);
			query.setString(0,this.getdate(date));
		}
		else if(type == 3)
		{
			query.setString(1,this.getdate(date));
			date.setHours(h - 24*7);
			query.setString(0,this.getdate(date));
		}
		else
		{
			query.setString(1,this.getdate(date));
			date.setHours(h - 24*30);
			query.setString(0,this.getdate(date));
		}
		
		query.setMaxResults(max);		
		
		list = query.list();
		
		tran.commit();
		
		session.close();
		
		return list;
	}
	
	public String getdate(Date date)
	{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		String str = format.format(date);
		
		System.out.println(str);
		
		return str;
	}
	
	public List getFatieByName(String hackName,int begin,int end)
	{
		List list = new ArrayList();
		
		FatieVO tie = new FatieVO();
		tie.setHackName(hackName);
		
		list = this.getHibernateTemplate().findByExample(tie,begin,end);
		
		return list;
	}
	
	public int getFatieByName(String hackName)
	{
		List list = new ArrayList();
		
		FatieVO tie = new FatieVO();
		tie.setHackName(hackName);
		
		list = this.getHibernateTemplate().findByExample(tie);
		
		return list.size();
	}
	
	public List getHuitieByName(String hackName,int begin,int end)
	{
		
		HuitieVO tie = new HuitieVO();
		tie.setHackName(hackName);
		
		return this.getHibernateTemplate().findByExample(tie,begin,end);
	}
	
	public List getHuitieByName(String hackName)
	{
		
		HuitieVO tie = new HuitieVO();
		tie.setHackName(hackName);
		
		return this.getHibernateTemplate().findByExample(tie);
	}
	
	public int getInvitation(int type)
	{
		FatieVO tie = new FatieVO();
		tie.setType(type);
		
		return this.getHibernateTemplate().findByExample(tie).size();
	}
	
	public String lastByType(int type)
	{
		String hackName = null;
		
		String sql = "from FatieVO as f where f.type = "+type+" order by f.createTime desc";
		
		List list = this.getHibernateTemplate().find(sql);
		
		if(list.size() > 0)
		{
			FatieVO tie = (FatieVO)list.get(0);
			
			hackName = tie.getLasthui();
		}		
		
		return hackName;
	}
	
	public boolean replay(int id,String hackName)
	{
		boolean is = false;
		
		String sql = "from HuitieVO as f where f.tieid = ? and f.hackName = ?" ;
		
		Query query = this.getSession().createQuery(sql);
		query.setInteger(0,id);
		query.setString(1,hackName);
		
		List list = query.list();
		
		if(list.size() > 0)
		{
			is = true;
		}
		
		return is;
	}
	
	
	public void del_tie(int id)
	{
		
	}
	
	
	
	

}
