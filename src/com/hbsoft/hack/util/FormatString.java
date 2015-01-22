/**
 * 
 */
package com.hbsoft.hack.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @时间 2009-12-17 上午02:57:15
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class FormatString 
{
	public static String formatString(String str,int len)
	{
		String formatstr = null;
		
		if(str.length() > len)
		{
			formatstr = str.substring(0,len);
		}
		else
		{
			formatstr = str;
		}
		
		return formatstr;
	}
	
	public static String getZhujian(int max)
	{
		
		String len = "0001";
		
		System.out.println(max);
		
		max = max+1;
		
		System.out.println(max);
		
		if(max < 10)
		{
			len = "000"+max;
		}
		else if(max>=10 &&max<100)
		{
			len = "00"+max;
		}
		else if(max>=100&&max<1000)
		{
			len = "0"+max;
		}
		else
		{
			len = ""+max;
		}
		
		String str = "H-"+getTime()+"-"+len;
		
		return str;
	}
	
	public static String getTime()
	{
		
		Date d = new Date();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		
		String str = format.format(d);
				
		return str;
	}
	
	public static String getTime1()
	{
		
		Date d = new Date();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		String str = format.format(d);
				
		return str;
	}
	public static void main(String[] args)
	{
		System.out.println(new Date().getTime());
	}
}
