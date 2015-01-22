package com.hbsoft.hack.init;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitHackSystem extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1481685885146086956L;

	public InitHackSystem()
	{
		ServletContext con = null;
		
		if(con != null)
		{
			con.setAttribute("title","华夏黑客联盟");
			con.setAttribute("search","华夏黑客联盟");
		}
		else 
		{
			System.out.println("是空的！！！");
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

	}
}
