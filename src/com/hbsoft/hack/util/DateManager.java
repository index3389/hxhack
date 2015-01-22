/**
 * 
 */
package com.hbsoft.hack.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @11:28:36 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class DateManager 
{
	public static String dateDAO(Date date)
	{
		String msg = null;
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月");
		
		msg = format.format(date);
		
		return msg;
	}
}
