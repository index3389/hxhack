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

import com.hbsoft.hack.interfaces.AdminManager;
import com.hbsoft.hack.util.NewSession;
import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.HackuserVO;
import com.hbsoft.hack.vo.SysVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @2:14:15 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class AdminDAO extends HibernateDaoSupport implements AdminManager
{

	public TopicVO getTopicById(int id)
	{
		TopicVO vo = null;	
		
		Session sion = NewSession.getSession();
		
		Transaction tran = sion.beginTransaction();
		
		String sql = "from TopicVO as s where s.hid = :n";
		
		Query query = sion.createQuery(sql);
		query.setInteger("n",id);
		
		vo = (TopicVO)query.uniqueResult();
		
		tran.commit();
		
		sion.close();
		
		return vo;
	}

	public boolean saveTopic(Object topic)
	{
		
		boolean is = false;
		
		try
		{
			this.getHibernateTemplate().save(topic);
			
			is = true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return is;
	}

	public boolean delTopicById(int id)
	{		
		return false;
	}

	public boolean checkName(String sysName, String sysPass)
	{
		
		boolean is = false;
		
		SysVO sys = new SysVO();
		sys.setSysName(sysName);
		sys.setSysPass(sysPass);
		
		List list = this.getHibernateTemplate().findByExample(sys);
		
		if(list.size() == 1)
		{
			is = true;
		}
		
		return is;
	}

	public DownloadVO getDownloadById(int id)
	{		
		
		DownloadVO download = null;
		
		
		
		return download;
	}

	public List getDownloadByType(int type, int begin, int end)
	{	
		
		List list = new ArrayList();
		
		return list;
	}

	public List getContent(Object vo, int begin, int end)
	{
		
		List list = new ArrayList();
		
		list = this.getHibernateTemplate().findByExample(vo,begin,end);
		
		return list;
	}
	public Object getObject(int id,String vo)
	{
		
		String sql = "from TopicVO as t where t.topicid = " + id;
		
		if("DownloadVO".equals(vo))
		{
			sql = "from DownloadVO as t where t.downid = " + id;
			
			DownloadVO download = new DownloadVO();
			
			List list = this.getSession().createQuery(sql).list();
			
			download = (DownloadVO)list.get(0);
			
			return download;
			
		}
		else if("DonghuaVO".equals(vo))
		{
			sql = "from DonghuaVO as t where t.donghuaid = " + id;
			
			return (DonghuaVO)this.getSession().createQuery(sql).list().get(0);

		}
		else
		{
			return (TopicVO)this.getSession().createQuery(sql).list().get(0);
		}
	}
	
	
	public int getall(String type)
	{
		String sql = "from " + type;
		
		return this.getHibernateTemplate().find(sql).size();
	}
	
	public boolean update_topic(TopicVO vo)
	{
		boolean is = false;
		
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		String hql = "from TopicVO as t where t.topicid = " + vo.getTopicid().intValue();
		
		Query query = session.createQuery(hql);
		
		try
		{
			
			TopicVO topic = (TopicVO)query.uniqueResult();
			
			topic.setAuthor(vo.getAuthor());
			topic.setContent(vo.getContent());
			topic.setIsbest(vo.getIsbest());
			topic.setTitle(vo.getTitle());
			
			tran.commit();
			
			is = true;
			
			
		}catch(Exception e)
		{
			tran.rollback();
			e.printStackTrace();
		}
		session.close();
		return is;
	}
	
	public boolean update_download(DownloadVO vo)
	{
		
		boolean is = false;
		
		return is;
	}
	
	public boolean update_cartoon(DonghuaVO vo)
	{
		
		boolean is = false;
		
		return is;
	}
	
	public List getalluser(int begin,int max)
	{
		String sql = "from HackuserVO";
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(begin);
		query.setMaxResults(max);
		
		//return this.getHibernateTemplate().findByExample(new HackuserVO(), begin,max)	;
		return query.list();
	}
	
	public int getalluser()
	{
		return this.getHibernateTemplate().find("from HackuserVO").size();
	}
}
