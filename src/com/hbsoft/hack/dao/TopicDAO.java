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

import com.hbsoft.hack.interfaces.TopicManager;
import com.hbsoft.hack.util.NewSession;
import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.LiterVO;
import com.hbsoft.hack.vo.NewsVO;
import com.hbsoft.hack.vo.SafetyVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @时间 2009-12-17 上午02:51:21
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class TopicDAO extends HibernateDaoSupport implements TopicManager
{

	
	public List getTopicByType(int type,int begin,int end)
	{			
		List list = null;
		
		//TopicVO vo = new TopicVO();
		//vo.setType(new Integer(type));
		
		//list = this.getHibernateTemplate().findByExample(vo,begin,end);
		String sql = "from TopicVO as t where t.type = "+type+" order by t.createTime desc";
		System.out.println(sql);
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(begin);
		query.setMaxResults(end);
		
		list = query.list();
		
		return list;
	}
	
	public List getTopicByType(int type)
	{			
		List list = null;
		
		TopicVO vo = new TopicVO();
		vo.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(vo);
		
		return list;
	}

	public TopicVO getTopicById(int id)
	{	
		
		String sql = "from TopicVO as t where topicid = "+id;
		
		List list = null;
		
		list = this.getHibernateTemplate().find(sql);
		
		TopicVO topic = (TopicVO)list.get(0);
		
		return topic;
	}

	public DonghuaVO getDonghuaById(int id)
	{
		
		List list = null;
		
		String sql = "from DonghuaVO as t where donghuaid = "+id;
		
		list = this.getHibernateTemplate().find(sql);
		
		DonghuaVO vo = (DonghuaVO)list.get(0);
		
		return vo;
	}

	public List getDonghuaByType(int type)
	{
		
		List list = null;
		
		DonghuaVO vo = new DonghuaVO();
		vo.setType(type);
		
		list = this.getHibernateTemplate().findByExample(vo);
		
		return list;
	}

	public DownloadVO getDownloadById(int id)
	{
		
		List list = null;
		
		String sql = "from DownloadVO as t where downid = "+id;
		
		list = this.getHibernateTemplate().find(sql);
		
		DownloadVO download = (DownloadVO)list.get(0);
		
		return download;
	}

	public List getDownloadByType(int type,int begin,int end) 
	{
		
		List list = null;
		
		DownloadVO vo = new DownloadVO();
		vo.setType(type);
		
		list = this.getHibernateTemplate().findByExample(vo,begin,end);
		
		return list;
	}

	public NewsVO getNewsById(int id)
	{
		
		List list = null;
		
		NewsVO vo = null;
		
		String sql = "from NewsVO as n where n.newsid = "+id;
		
		list = this.getHibernateTemplate().find(sql);
		
		vo = (NewsVO)list.get(0);
		
		return vo;
	}

	public List getNewsByType(int type)
	{
		
		List list = null;
		
		NewsVO vo = new NewsVO();
		vo.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(vo);
		
		return list;
	}
	
	public List getNewsByType(int type,int begin,int end)
	{
		
		List list = null;
		
		NewsVO vo = new NewsVO();
		vo.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(vo,begin,end);
		
		return list;
	}

	public List getSafetyByType(int type)
	{
		
		List list = null;
		
		SafetyVO vo = new SafetyVO();
		vo.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(vo);
		
		return list;
	}
	
	public List getSafetyByType(int type,int begin,int end)
	{
		
		List list = null;
		
		SafetyVO vo = new SafetyVO();
		vo.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(vo,begin,end);
		
		return list;
	}

	public SafetyVO getsafetyById(int id) 
	{
		
		List list = null;
		
		String sql = "from SafetyVO as s where s.safetyid = "+id;
		
		list = this.getHibernateTemplate().find(sql);
		
		SafetyVO vo = (SafetyVO)list.get(0);
		
		return vo;
	}

	public LiterVO getLiterById(int id)
	{		
		List list = null;
		
		String sql = "from LiterVO as s where s.literid = "+id;
		
		list = this.getHibernateTemplate().find(sql);
		
		LiterVO vo = (LiterVO)list.get(0);
		
		return vo;
	}

	public List getLiterByType(int type,int begin,int end)
	{	
		
		List list = null;
		
		LiterVO vo = new LiterVO();
		vo.setType(new Integer(type));
		
		list = this.getHibernateTemplate().findByExample(vo,begin,end);
		
		return list;
	}

	public List getDownloadByType(int type)
	{		

		List list = null;
		
		DownloadVO vo = new DownloadVO();
		vo.setType(type);
		
		Query query = this.getSession().createQuery( "from DownloadVO where type = " + type);
		
		list = query.list();
		
		return list;
	}

	public List getDonghuaByType(int type, int begin, int end)
	{
		

		List list = null;
		
		DonghuaVO vo = new DonghuaVO();
		vo.setType(type);
		
		list = this.getHibernateTemplate().findByExample(vo,begin,end);
		
		return list;

	}

	public List hackFind(String vo, String content) 
	{
		
		List list = new ArrayList();
		
		String sql = "from "+vo+" as u where u.title like ?";
		
		list = this.getHibernateTemplate().find(sql,"%"+content+"%"); 
		
		return list;
	}
	
	public List common_new(String table,int max)
	{
		List list = new ArrayList();
		
		String sql = "from "+table+" as t order by t.createTime";
		
		Session session = NewSession.getSession();
		
		Query query = session.createQuery(sql);
		query.setMaxResults(max);
		
		list = query.list();
		
		return list;
	}
	
	
	public List common_best(String table,int max)
	{
		List list = new ArrayList();
		
		String sql = "from "+table+" as t where t.isbest = 1 order by t.createTime";
		
		Session session = NewSession.getSession();
		
		Query query = session.createQuery(sql);
		query.setMaxResults(max);
		
		list = query.list();
		
		return list;
	}
	
	
	public List common_download(String table,int max)
	{
		List list = new ArrayList();
		
		String sql = "from "+table+" as t order by t.downcount";
		
		Session session = NewSession.getSession();
		
		Query query = session.createQuery(sql);
		query.setMaxResults(max);
		
		list = query.list();
		
		return list;
	}
	
	public List common_safe(String table,int max)
	{
		List list = new ArrayList();
		
		String sql = "from "+table+" as t where t.ishot = 1 order by t.createTime";
		
		Session session = NewSession.getSession();
		
		Query query = session.createQuery(sql);
		query.setMaxResults(max);
		
		list = query.list();
		
		return list;
	}
	
	public List common_fen(String vo,int begin,int max)
	{
		
		String sql = "from "+vo+" as v order by v.createTime";
		
		Query query = this.getSession().createQuery(sql);
		query.setFirstResult(begin);
		query.setMaxResults(max);
		
		return query.list();
	}
	
	public int getall(String vo)
	{
		String sql = "from " +vo;
		
		return this.getHibernateTemplate().find(sql).size();
	}
	public List getIndex(String vo)
	{
		
		String sql = "from "+vo+" as v order by v.createTime";
		
		Query query = this.getSession().createQuery(sql);
		query.setMaxResults(20);
		
		return query.list();
	}
	
	public boolean del_byid(String vo,int id)
	{
		
		String sql = "";	
		
		
		if("TopicVO".equals(vo))
		{
			sql = "delete TopicVO as t where t.topicid = " + id;
		}
		else if("DownloadVO".equals(vo))
		{
			sql = "delete DownloadVO as d where d.downid = " + id;
		}
		else if("DonghuaVO".equals(vo))
		{
			sql = "delete DonghuaVO as d where d.donghuaid = " + id;
		}
		else if("NewsVO".equals(vo))
		{
			sql = "delete NewsVO as d where d.newsid = " + id;
		}
		else if("SafetyVO".equals(vo))
		{
			sql = "delete SafetyVO as d where d.safetyid = " + id;
		}
		
		Session session = NewSession.getSession();
		
		Query query = session.createQuery(sql);
		query.executeUpdate();
		
		return true;
		
	}
	
	
}
