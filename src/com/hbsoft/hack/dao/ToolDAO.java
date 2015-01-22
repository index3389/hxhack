/**
 * 
 */
package com.hbsoft.hack.dao;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import com.hbsoft.hack.interfaces.ToolManager;
import com.hbsoft.hack.util.NewSession;

/**
 * @时间 2009-12-23 上午07:10:18
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class ToolDAO implements ToolManager
{
	public List all(String lap)
	{		
		String sql = "from "+lap;
		
		Session session = NewSession.getSession();
		
		Query query = session.createQuery(sql);
		
		return query.list();
	}
}
