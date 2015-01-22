package com.hbsoft.hack.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hbsoft.hack.dao.AdminDAO;
import com.hbsoft.hack.vo.TopicVO;

public class InitSystem extends HttpServlet
{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3739692241107244423L;

	public void init() throws ServletException
	{
		System.out.println("***********我会执行吗********");
		System.out.println("===========我会执行吗========");
		System.out.println("***********我会执行吗********");
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String event = request.getParameter("event");
		TopicVO topic = new TopicVO();
		AdminDAO dao = new AdminDAO();
		
		if("add".equals(event))
		{
			String content = request.getParameter("infoContent");
			String title = request.getParameter("title");
			String author = request.getParameter("author");		
			
			topic.setAuthor(author);
			topic.setContent(content);
			topic.setTitle(title);
					
			boolean is = dao.saveTopic(topic);
			
			if(is)
			{
				response.sendRedirect("ok.jsp");
			}
			else
			{
				response.sendRedirect("fail.jsp");
			}
			
		}
		else if("look".equals(event))
		{
			String str = request.getParameter("num");
			int n = Integer.parseInt(str);
			
			topic = dao.getTopicById(n);
			
			if(topic != null)
			{
				request.setAttribute("vo",topic);
				request.getRequestDispatcher("/show.jsp?").forward(request, response);
			}
			else
			{
				response.sendRedirect("fail.jsp");
			}
		}
			
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		this.doGet(request, response);
	}
}
