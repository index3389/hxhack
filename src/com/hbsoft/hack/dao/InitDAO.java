/**
 * 
 */
package com.hbsoft.hack.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hbsoft.hack.interfaces.InitManager;
import com.hbsoft.hack.util.NewSession;
import com.hbsoft.hack.vo.FatieVO;
import com.hbsoft.hack.vo.LapVO;
import com.hbsoft.hack.vo.SysVO;

/**
 * @11:50:05 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class InitDAO extends HibernateDaoSupport implements InitManager 
{
	public List Lap()
	{
		List list = new ArrayList();
		
		list = this.getHibernateTemplate().find("from LapVO");
		
		return list;
	}
	
	public List BaseInfo()
	{
		List list = new ArrayList();
		
		list = this.getHibernateTemplate().find("from InfoVO");
		
		return list;
	}
	
	public List byType(int type)
	{
		List list = new ArrayList();
		
		LapVO lap = new LapVO();
		lap.setType(type);
		
		list = this.getHibernateTemplate().findByExample(lap);
		
		return list;
	}
	
	public boolean addLap(Object obj)
	{
		this.getHibernateTemplate().save(obj);
		return true;
	}
	
	public int getById(int id)
	{
		int type = 1;
		
		String sql = "from LapVO as l where l.lapId = " + id;
		
		List list = this.getHibernateTemplate().find(sql);
		
		LapVO lap = (LapVO)list.get(0);
		
		type = lap.getType();
		
		return type;
	}
	
	public LapVO byId(int id)
	{
		LapVO lap = new LapVO();
		
		String sql = "from LapVO as l where l.lapId = " + id;
		
		List list = this.getHibernateTemplate().find(sql);
		
		lap = (LapVO)list.get(0);
		
		return lap;
	}
	
	public boolean update(LapVO lap)
	{
		boolean is = false;
		
		int id = lap.getLapId();
		String title = lap.getLapName();
		String content = lap.getContent();
		
		String sql = "from LapVO as l where l.lapId = " + id;
		
		Session session = this.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			
			Query query = session.createQuery(sql);
			
			LapVO lapVO = (LapVO)query.uniqueResult();
			
			lapVO.setLapName(title);
			lapVO.setContent(content);
			
			is = true;
			
			tran.commit();
			
		}catch(Exception e)
		{
			tran.rollback();
			e.printStackTrace();
		}finally
		{
			session.close();
		}
		
		return is;
	}
	
	public boolean isorhas(int id)
	{
		boolean is = false;
		
		FatieVO tie = new FatieVO();
		tie.setType(id);
		
		List list = this.getHibernateTemplate().findByExample(tie);
		
		if(list.size() > 0)
		{
			is = true;
		}
		
		return is;
	}
	
	public boolean delById(int id)
	{
		boolean is = false;
		
		String sql = "from LapVO as l where l.lapId = " + id;
		
		Session session = this.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			
			Query query = session.createQuery(sql);
			
			LapVO lap = (LapVO)query.uniqueResult();
			
			session.delete(lap);
			
			is = true;
			
			tran.commit();
			
		}catch(Exception e)
		{
			tran.rollback();
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return is;
	}
	
	public boolean add_admin(String user,String pass)
	{
		boolean is = true;
		
		SysVO sys = new SysVO();
		sys.setRole(new Integer(1));
		sys.setSysName(user);
		sys.setSysPass(pass);
		
		this.getHibernateTemplate().save(sys);
		
		return is;
	}
	public boolean update_pass_admin(String user,String pass)
	{
		boolean is = false;
		
		Session session = this.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		try
		{
			
			String sql = "update SysVO as s set s.sysPass = ? where s.sysName = ?";
			
			Query query = session.createQuery(sql);
			query.setString(0,pass);
			query.setString(1,user);
			query.executeUpdate();
			
			tran.commit();
			
			is = true;
			
		}catch(Exception e)
		{
			tran.rollback();
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
		
		return is;
	}
	
	public boolean exist(String user)
	{
		boolean is = false;
		
		SysVO sys = new SysVO();
		sys.setSysName(user);
		
		List list = this.getHibernateTemplate().findByExample(sys);
		
		if(list.size() > 0)
		{
			is = true;
		}
		
		return is;
	}
}
