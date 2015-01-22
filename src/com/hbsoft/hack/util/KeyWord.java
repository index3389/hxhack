/**
 * 
 */
package com.hbsoft.hack.util;

import javax.servlet.ServletContext;

/**
 * @时间 2010-1-15 上午08:36:22
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class KeyWord 
{
	public static boolean keyword(ServletContext sc,String str)
	{
		
		boolean is = false;
		
		String word = (String)sc.getAttribute("key");
		
		if(word == null)
		{
			return false;
		}
		
		String[] key = word.split("|");
		
		int len = key.length;
		
		for(int i=0;i<len;i++)
		{
			if(str.indexOf(key[i]) != -1)
			{
				System.out.println(key[i]);
				is = true;
			}
		}
		
		return is;
	}
}
