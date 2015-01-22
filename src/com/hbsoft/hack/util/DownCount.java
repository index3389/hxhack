/**
 * 
 */
package com.hbsoft.hack.util;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;

/**
 * @时间 2010-1-12 上午08:13:19
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class DownCount
{
	public void download_add(String filename)
	{
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		String sql = "from DownloadVO as d where d.downName = '"+filename+"'";
		
		Query query = session.createQuery(sql);
		
		DownloadVO down = (DownloadVO)query.uniqueResult();
		int temp = down.getDowncount();
		down.setDowncount(temp + 1);
		
		tran.commit();
		
		session.close();
	}
	
	public void cartoon_add(String filename)
	{
		
		Session session = NewSession.getSession();
		
		Transaction tran = session.beginTransaction();
		
		tran.begin();
		
		String sql = "from DonghuaVO as d where d.downName = '"+filename+"'";
		
		Query query = session.createQuery(sql);
		
		DonghuaVO down = (DonghuaVO)query.uniqueResult();
		int temp = down.getDowncount();
		down.setDowncount(temp + 1);
		
		tran.commit();
		
		session.close();
	}
}
