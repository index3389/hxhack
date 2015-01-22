/**
 * 
 */
package com.hbsoft.hack.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @8:37:03 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class BBSFilter implements Filter
{
	
	public void destroy() 
	{
		
	}
	
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException
	{
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		ServletContext sc = request.getSession(true).getServletContext();
		
		Integer intger = (Integer)sc.getAttribute("bbs_basic1");
		
		if(intger.intValue() == 0)
		{
			System.out.println("论坛暂时无法访问");
			request.getRequestDispatcher("/center/build.jsp").forward(request,response);
		}
		else
		{
			chain.doFilter(req,res);
		}
		
	}

	
	public void init(FilterConfig arg0) throws ServletException 
	{
		
	}

}
