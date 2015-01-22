
package com.hbsoft.hack.servlet;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hbsoft.hack.util.DownCount;

/**
 * @时间 2009-12-17 上午02:50:43
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class DownLoadServlet extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 915319349808911385L;

	/**
	 * 此servlet是专门用于下载用的
	 */
	
	DownCount count = new DownCount();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
		
		String filename = request.getParameter("filename");
		
		
		
		String type = request.getParameter("type");
		
		String dir = this.getServletContext().getRealPath("/download/"+this.check(Integer.parseInt(type)));
		
		File path = new File(dir +"\\"+ filename);
		
		FileInputStream fis = null;
		
		BufferedInputStream in = null;
		
		BufferedOutputStream out = null;
		
		try
		{
			
			 fis = new FileInputStream(path);
			 
		}catch(FileNotFoundException e)
		{
			System.out.println("你要下载的东西不存在(软件下载)" + e);
			request.getRequestDispatcher("error/notfound.jsp").forward(request,response);
			return;
		}
		
		count.download_add(filename);
		
		response.setContentType("application/*");
		
		String name = URLEncoder.encode(filename,"UTF-8");
		
		response.setHeader("Content-disposition","attachment;filename="+name);
		
		in = new BufferedInputStream(fis);
		
		out = new BufferedOutputStream(response.getOutputStream());
			
		byte[] buff = new byte[1024];
		while((in.read(buff)) != -1)
		{
			out.write(buff);
		}
		 
		out.flush();
		if(fis != null)
		{
			fis.close();
		}
		if(in != null)
		{
			in.close();
		}
		if(out != null)
		{
			out.close();
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		this.doGet(request, response);
	}
	
	public String check(int type)
	{
		String str = "hole";
		
		if(type == 1)
		{
			str = "hole";
		}
		else if(type == 2)
		{
			str = "break";
		}
		else if(type == 3)
		{
			str = "attact";
		}
		else if(type == 4)
		{
			str = "horse";
		}
		else if(type == 5)
		{
			str = "order";
		}
		else if(type == 6)
		{
			str = "sum";
		}
		else if(type == 7)
		{
			str = "safe";
		}
		else if(type == 8)
		{
			str = "issue";
		}
		else 
		{
			str = "hole";
		}	
		return str;
	}
}
