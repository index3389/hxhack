/**
 * 
 */
package com.hbsoft.hack.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * @时间 2009-12-17 上午02:55:09
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class NewSession
{
	private static Configuration con;
	
	public static Session getSession()
	{
		Session session = null;
		
		con = new Configuration().configure();
		
		SessionFactory factory = con.buildSessionFactory();
		
		session = factory.openSession();
		
		return session;
	}
}
