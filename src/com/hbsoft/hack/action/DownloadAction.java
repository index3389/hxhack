package com.hbsoft.hack.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;

import com.hbsoft.hack.form.DownloadForm;
import com.hbsoft.hack.interfaces.AdminManager;
import com.hbsoft.hack.vo.DownloadVO;

public class DownloadAction extends DispatchAction
{

	
	private AdminManager adminManager;

	public void setAdminManager(AdminManager adminManager) 
	{
		this.adminManager = adminManager;
	}
	
	public ActionForward addObj(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		String msg = "fail";
		
		DownloadForm fm = (DownloadForm)form;
		
		Integer typedir = fm.getType();
		
		if(typedir.intValue() == 1)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/hole/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 2)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/break/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 3)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/attact/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setTitle(fm.getTitle());
					download.setHuan(fm.getHuan());
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 4)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/horse/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 5)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/order/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 6)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/sum/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
		
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 7)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/safe/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else if(typedir.intValue() == 8)
		{
			ServletContext sc = request.getSession().getServletContext();
			String dir = sc.getRealPath("/download/issue/");
			
			FormFile file = fm.getFormFile();
			
			int size = file.getInputStream().available();
			
			String filename = this.getfilename();
			
			boolean iss = this.exist(filename,dir);
			
			if(iss)
			{
				return map.findForward(msg);
			}
			
			try
			{
				
				boolean is = this.saveFile(file,dir,filename);
				
				if(is)
				{
					DownloadVO download = new DownloadVO();
					download.setDownName(filename);
					download.setAdminName(fm.getAdminName());
					download.setContent(fm.getContent());
					download.setDownpass(fm.getDownpass());
					download.setCreateTime(new Date());
					download.setDownsize(size);
					download.setLanguage(fm.getLanguage());
					download.setType(fm.getType());
					download.setUpdateTime(this.convertDate(fm.getUpdateTime()));
					download.setDowncount(new Integer(0));
					download.setHuan(fm.getHuan());
					download.setTitle(fm.getTitle());
					
					
					adminManager.saveTopic(download);
					
					msg = "addOK";
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return map.findForward(msg);
		}
		else 
		{
			return map.findForward(msg);
		}
	}
	

	public ActionForward admin(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		String msg = "fail";
		
		return map.findForward(msg);
	}
	
	public boolean exist(String filename,String path)
	{
		boolean is = false;

		File isfile = new File(path +"/"+ filename);
		
		if(isfile.exists())
		{
			is = true;
		}
		
		return is;
	}
	
	
	public boolean saveFile(FormFile file,String path,String filename)
	{
		boolean is = false;
		
		try
		{
			if(file == null)
			{
				return is;
			}
			InputStream in = file.getInputStream();
			OutputStream out = new FileOutputStream(path +"/"+ filename);
			
			int b = 0;
			byte[] buff = new byte[1024];
			while((b = in.read(buff,0,124)) != -1)
			{
				out.write(buff,0, b);
			}
			
			in.close();
			out.close();
			file.destroy();
			
			is = true;
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return is;
	}
	
	public Date convertDate(String s)
	{
		Date date = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		try
		{
			
			date = sdf.parse(s);
			
		}catch(ParseException e)
		{
			e.printStackTrace();
		}
		
		return date;
	}
	
	public String getfilename()
	{
		
		String name = "download";
		
		Date date = new Date();
		
		long s = date.getTime();
		
		name = s + ".rar";
		
		return name;
	}
	
}
