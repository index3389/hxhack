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
import javax.servlet.http.HttpSession;

/**
 * @8:37:03 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class HackFilter implements Filter
{
	
	public void destroy() 
	{
		
	}
	
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException
	{
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		HttpSession session = request.getSession(true);
		
		ServletContext sc = session.getServletContext();
		
		if(sc.getAttribute("title") == null)
		{
			sc.setAttribute("title","华夏黑客联盟");
			sc.setAttribute("search","华夏黑客联盟");
			sc.setAttribute("email","admin@hack.com");
		}
		
		
		
		if(sc.getAttribute("stop_all") != null )
		{
			
			Integer inter = (Integer)sc.getAttribute("stop_all");
			
			if(inter.intValue() == 0 && session.getAttribute("admin") == null)
			{
				
				String str = request.getRequestURI();
				
				if(str.indexOf("/images") != -1)
				{
					chain.doFilter(req,res);
				}
				else if(str.indexOf("images") != -1)
				{
					chain.doFilter(req,res);
				}
				else
				{
					request.getRequestDispatcher("/stop.htm").forward(request,response);
				}
			}	
			else
			{
				chain.doFilter(req,res);
			}
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
