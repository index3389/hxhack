/**
 * 
 */
package com.hbsoft.hack.action;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.db.DBManager;
import com.hbsoft.hack.form.LapForm;
import com.hbsoft.hack.interfaces.AdminManager;
import com.hbsoft.hack.interfaces.InitManager;
import com.hbsoft.hack.interfaces.UserManager;
import com.hbsoft.hack.util.MD5;
import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.LapVO;
import com.hbsoft.hack.vo.LiterVO;
import com.hbsoft.hack.vo.NewsVO;
import com.hbsoft.hack.vo.SafetyVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @时间 2009-12-25 上午08:54:12
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class AdminAction extends DispatchAction
{
	private AdminManager adminManager;
	
	private InitManager initManager;
	
	private UserManager userManager;
	
	public void setUserManager(UserManager userManager) 
	{
		this.userManager = userManager;
	}

	public void setInitManager(InitManager initManager) 
	{
		this.initManager = initManager;
	}


	public void setAdminManager(AdminManager adminManager) 
	{
		this.adminManager = adminManager;
	}
	
	
	public ActionForward addObj(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "fail";
		
		DynaActionForm frm = (DynaActionForm)form;
		
		String title = frm.getString("title");
		String author = frm.getString("author");
		String content = frm.getString("infoContent");
		
		String hot = frm.getString("hot");
		String pick = frm.getString("pick");	
		String type1 = frm.getString("type1");
		String type2 = frm.getString("type2");
		
		int best = Integer.parseInt(pick);
		int isnew = Integer.parseInt(hot);
		
		int type = Integer.parseInt(type2);
		
		if(1 == Integer.parseInt(type1))
		{
			TopicVO topic = new TopicVO();
			topic.setAuthor(author);
			topic.setContent(content);
			topic.setCreateTime(new Date());
			topic.setIsbest(new Integer(best));
			topic.setIsnew(new Integer(isnew));
			topic.setTitle(title);
			topic.setType(new Integer(type));
			
			boolean is = adminManager.saveTopic(topic);
			
			if(is)
			{
				
				msg = "addOK";
				
				return map.findForward(msg);
			}
			else
			{
				return map.findForward(msg);
			}
		}
		else if(2 == Integer.parseInt(type1))
		{
			NewsVO news = new NewsVO();
			news.setAdminName(author);
			news.setContent(content);
			news.setCreateTime(new Date());
			news.setTitle(title);
			news.setType(new Integer(type));
			news.setIsbest(new Integer(best));
			news.setIsnew(new Integer(isnew));
			
			boolean is = adminManager.saveTopic(news);
			
			if(is)
			{
				
				msg = "addOK";
				
				return map.findForward(msg);
			}
			else
			{
				return map.findForward(msg);
			}
		}
		else if(3 == Integer.parseInt(type1))
		{
			SafetyVO safe = new SafetyVO();
			safe.setAdminName(author);
			safe.setContent(content);
			safe.setCreateTime(new Date());
			safe.setIshot(new Integer(best));
			safe.setIsnew(new Integer(isnew));
			safe.setTitle(title);
			safe.setType(new Integer(type));
			
			boolean is = adminManager.saveTopic(safe);
			
			if(is)
			{
				
				msg = "addOK";
				
				return map.findForward(msg);
			}
			else
			{
				return map.findForward(msg);
			}
		}
		else if(4 == Integer.parseInt(type1))
		{
			msg = "addOK";
			
			return map.findForward(msg);
		}
		else if(5 == Integer.parseInt(type1))
		{
			DonghuaVO dong = new DonghuaVO();
			dong.setAdminName(author);
			dong.setContent(content);
			dong.setCreateTime(new Date());
			dong.setTitle(title);
			dong.setType(type);
			
			boolean is = adminManager.saveTopic(dong);
			
			if(is)
			{
				
				msg = "addOK";
				
				return map.findForward(msg);
			}
			else
			{
				return map.findForward(msg);
			}
		}
		else if(6 == Integer.parseInt(type1))
		{
			LiterVO dong = new LiterVO();
			dong.setAdminName(author);
			dong.setContent(content);
			dong.setCreateTime(new Date());
			dong.setTitle(title);
			dong.setType(new Integer(type));
			dong.setIshot(new Integer(best));
			dong.setIsnew(new Integer(isnew));
			
			boolean is = adminManager.saveTopic(dong);
			
			if(is)
			{
				
				msg = "addOK";
				
				return map.findForward(msg);
			}
			else
			{
				return map.findForward(msg);
			}
		}
		else
		{
			return map.findForward(msg);
		}
	
	}
	
	public ActionForward add_lap(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		
		String msg = "add_lap";
		
		LapForm lapForm = (LapForm)form;
		String title = lapForm.getTitle();
		String content = lapForm.getContent();
		int type = lapForm.getType();
		
		LapVO lap = new LapVO();
		lap.setContent(content);
		lap.setLapName(title);
		lap.setType(type);
		
		initManager.addLap(lap);
		
		return map.findForward(msg);
	}
	
	public ActionForward getObj(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "edit_topic";
		
		
		
		return map.findForward(msg);
	}
	
	public ActionForward getContent(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "admin_1";
		
		String c = request.getParameter("c");
		
		String cp = request.getParameter("p");
		
		int page = 1;//得到当前第几页
		
		if(cp != null)
		{
			page = Integer.parseInt(cp);
		}
		
		int all = 1;//总记录数
		
		int per = 20;//每页显示20条
		
		int all_page = 1;//总页数
		
		List list = new ArrayList();
		
		if("topic".equals(c))
		{
			TopicVO topic = new TopicVO();
			
			all = adminManager.getall("TopicVO");
			
			if(all % per == 0)
			{
				all_page = all / per ;
			}
			else
			{
				all_page = all / per + 1;
			}
			
			list = adminManager.getContent(topic,(page-1)*per,page*per);
			
		}
		else if("download".equals(c))
		{
			
			msg = "admin_2";
			
			DownloadVO download = new DownloadVO();
			
			all = adminManager.getall("DownloadVO");
			
			if(all % per == 0)
			{
				all_page = all / per ;
			}
			else
			{
				all_page = all / per + 1;
			}
			
			list = adminManager.getContent(download,(page-1)*per,page*per);
		}
		else if("cartoon".endsWith(c))
		{
			
			msg = "admin_3";
			
			DonghuaVO donghua = new DonghuaVO();
			
			all = adminManager.getall("DonghuaVO");
			
			if(all % per == 0)
			{
				all_page = all / per ;
			}
			else
			{
				all_page = all / per + 1;
			}
			
			list = adminManager.getContent(donghua,(page-1)*per,page*per);
		}
		
		request.setAttribute("list",list);//总记录
		request.setAttribute("p",new Integer(page));//当前页数
		request.setAttribute("all",new Integer(all));//总记录数
		request.setAttribute("all_page",new Integer(all_page));//总页数
		
		return map.findForward(msg);
	}
	
	public ActionForward checkName(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "adminFail";
		
		String sysName = request.getParameter("u");
		String sysPass = request.getParameter("p");
		
		MD5 md = new MD5();
		
		boolean is = adminManager.checkName(sysName, md.getMD5ofStr(sysPass));
		
		if(is)
		{
			msg = "adminOK";
			request.getSession().setAttribute("admin",sysName);
		}		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("deprecation")
	public ActionForward backup(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "backup";

	
		String path = request.getRealPath("/DB/");
		
		request.setAttribute("path", path);
		
		DBManager db = new DBManager();
		boolean is = db.backup(path);
		
		return map.findForward(msg);
	}
	
	public ActionForward restore(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "restore";
		
		HttpSession session = request.getSession(true);
		
		String path = (String)session.getAttribute("path");
		
		DBManager db = new DBManager();
		boolean is = db.restore(path);
		
		if(!is)
		{
			msg = "restore_f";
		}
		
		return map.findForward(msg);
	}
	
	public ActionForward next(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "next";
		
		String path = request.getParameter("p");
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("path", path);
		
		return map.findForward(msg);
	}
	
	public ActionForward user(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "user";
		
		int all = adminManager.getalluser();//总共有多少条记录
		
		String cp = request.getParameter("p");
		
		int page = 1;//得到当前第几页
		
		if(cp != null)
		{
			page = Integer.parseInt(cp);
		}
		
		int per = 12;//每页显示12条
		
		int all_page = 1;//总页数
		
		if(all % per == 0)
		{
			all_page = all / per ;
		}
		else
		{
			all_page = all / per + 1;
		}
		
		List list = adminManager.getalluser((page - 1)*per,per*page);
		
		System.out.println("此次的长度是  " + list.size());
		
		request.setAttribute("hack",list);
		
		request.setAttribute("p",new Integer(page));
		request.setAttribute("all",new Integer(all));
		request.setAttribute("all_page",new Integer(all_page));
		
		return map.findForward(msg);
	}
	
	public ActionForward kill_all(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg = "kill";
		
		HttpSession session = request.getSession(true);
		
		ServletContext sc = session.getServletContext();
		
		sc.setAttribute("stop_all",new Integer(0));
		
		return map.findForward(msg);
	}
	
	public ActionForward del_user(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "del";
		
		String hack = (String)request.getParameter("id");
		
		String[] res = hack.split(",");
		
		int len = res.length;
		
		for(int i=0;i<len;i++)
		{
			if(res[i].length() > 0)
			{
				userManager.del_user(Integer.parseInt(res[i]));
			}
		}
		
		return map.findForward(msg);
	}
	
	
}
