/**
 * 
 */
package com.hbsoft.hack.init;

import java.util.ArrayList;
import java.util.List;

import com.hbsoft.hack.dao.ToolDAO;

/**
 * @时间 2010-1-8 上午11:39:52
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class Lap
{
	public static List getLap()
	{
		List list = new ArrayList();
		
		ToolDAO dao = new ToolDAO();
		
		list = dao.all("LapVO");
		
		return list;
	}
}
