/**
 * 
 */
package com.hbsoft.hack.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 * @时间 2010-1-14 上午03:40:19
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class SetupAction extends DispatchAction
{
	
	public ActionForward bbsBesic(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		String msg = "all";
		
		String name = request.getParameter("zhanName");
		String search = request.getParameter("zhanSearch");
		String mail = request.getParameter("zhanMail");
		String stop = request.getParameter("stop_all");
		
		ServletContext sc = request.getSession(true).getServletContext();
		
		sc.setAttribute("title",name);
		sc.setAttribute("search",search);
		sc.setAttribute("email",mail);
		sc.setAttribute("stop_all",new Integer(stop));
		
		return map.findForward(msg);
		
	}
	
	public ActionForward page(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		String msg = "page";
		
		String p = request.getParameter("p");
		
		int page = Integer.parseInt(p);
		
		ServletContext sc = request.getSession(true).getServletContext();
		
		sc.setAttribute("page",new Integer(page));
		
		return map.findForward(msg);
	}
	
	public ActionForward length(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		String msg = "page";
		
		String f_max1 = request.getParameter("f_max");
		String f_min1 = request.getParameter("f_min");
		String h_max1 = request.getParameter("h_max");
		String h_min1 = request.getParameter("h_min");
		String time1 = request.getParameter("time");
		
		int f_max = Integer.parseInt(f_max1);
		int f_min = Integer.parseInt(f_min1);
		int h_max = Integer.parseInt(h_max1);
		int h_min = Integer.parseInt(h_min1);
		int time = Integer.parseInt(time1);
		
		ServletContext sc = request.getSession(true).getServletContext();
		
		sc.setAttribute("f_max",new Integer(f_max));
		sc.setAttribute("f_min",new Integer(f_min));
		sc.setAttribute("h_max",new Integer(h_max));
		sc.setAttribute("h_min",new Integer(h_min));
		sc.setAttribute("time",new Integer(time));
		
		return map.findForward(msg);
	}
	
	public ActionForward integral(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		String msg = "all";
		
		String f1 = request.getParameter("f");
		String h1 = request.getParameter("h");
		String z1 = request.getParameter("z");
		
		int f = Integer.parseInt(f1);
		int h = Integer.parseInt(h1);
		int z = Integer.parseInt(z1);
		
		ServletContext sc = request.getSession(true).getServletContext();
		
		sc.setAttribute("fatie",new Integer(f));
		sc.setAttribute("huitie",new Integer(h));
		sc.setAttribute("zhuce",new Integer(z));
		
		return map.findForward(msg);
	}
}
