/**
 * 
 */
package com.hbsoft.hack.action;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.interfaces.InitManager;
import com.hbsoft.hack.util.MD5;
import com.hbsoft.hack.vo.HackuserVO;
import com.hbsoft.hack.vo.InfoVO;

/**
 * @11:46:48 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class InitAction extends DispatchAction
{

	private InitManager initManager;
	
	public void setInitManager(InitManager initManager) 
	{
		this.initManager = initManager;
	}

	public ActionForward bbs_basic(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		String msg = "bbs_basic";
		
		String bbs1 = request.getParameter("bbs1");
		String bbs2 = request.getParameter("bbs2");
		String bbs3 = request.getParameter("bbs3");
		String bbs4 = request.getParameter("bbs4");
		String bbs5 = request.getParameter("bbs5");
		
		int b1 = Integer.parseInt(bbs1);
		int b2 = Integer.parseInt(bbs2);
		int b3 = Integer.parseInt(bbs3);
		int b4 = Integer.parseInt(bbs4);
		int b5 = Integer.parseInt(bbs5);
		
		ServletContext sc = request.getSession(true).getServletContext();
		sc.setAttribute("bbs_basic1",new Integer(b1));
		sc.setAttribute("bbs_basic2",new Integer(b2));
		sc.setAttribute("bbs_basic3",new Integer(b3));
		sc.setAttribute("bbs_basic4",new Integer(b4));
		sc.setAttribute("bbs_basic5",new Integer(b5));
		
		return map.findForward(msg);
	}
	
	public ActionForward initSystem(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		System.out.println("系统正在初始化中......");
		
		HttpSession session = request.getSession(true);
		
		ServletContext sc = session.getServletContext();
		
		String msg = "s_ok";
		
		sc.setAttribute("lap1",initManager.byType(1));
		sc.setAttribute("lap",initManager.Lap());
		sc.setAttribute("lap2",initManager.byType(2));
		
		List list = initManager.BaseInfo();
		
		InfoVO title1 = (InfoVO)list.get(0);
		InfoVO search1 = (InfoVO)list.get(1);
		
		String title = title1.getInfoContent();
		String search = search1.getInfoContent();
	
			
		if(sc.getAttribute("bbs_basic1") == null || sc.getAttribute("title") == null)
		{
			sc.setAttribute("bbs_basic1",new Integer(1));
			sc.setAttribute("bbs_basic2",new Integer(1));
			sc.setAttribute("bbs_basic3",new Integer(1));
			sc.setAttribute("bbs_basic4",new Integer(1));
			sc.setAttribute("bbs_basic5",new Integer(0));
			sc.setAttribute("stop_all",new Integer(1));
			
			sc.setAttribute("fatie",new Integer(2));
			sc.setAttribute("huitie",new Integer(1));
			sc.setAttribute("zhuce",new Integer(0));
			
			System.out.println("正在初始化系统基本信息");
		}
		
		if(sc.getAttribute("title") == null)
		{
			sc.setAttribute("title",title);
			sc.setAttribute("search",search);
			sc.setAttribute("email","admin@hack.com");
		}
		
		sc.setAttribute("f_max",new Integer(5000));//发帖的最大长度
		sc.setAttribute("f_min",new Integer(10));//发帖的最小长度
		sc.setAttribute("h_max",new Integer(4000));
		sc.setAttribute("h_min",new Integer(10));
		sc.setAttribute("time",new Integer(30));
		sc.setAttribute("key","共产党|温家宝");
		
		System.out.println("初始化完毕");
		
		return map.findForward(msg);
	}
	
	public ActionForward key(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		
		HttpSession session = request.getSession(true);
		
		ServletContext sc = session.getServletContext();
		
		String msg = "key";
		
		String str = request.getParameter("keys");
		
		sc.setAttribute("key",str);
		
		return map.findForward(msg);
	}
	
	public ActionForward add_admin(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		
		String msg = "add_admin";
		
		String user = request.getParameter("user");
		String pass1 = request.getParameter("pass");
		
		MD5 md = new MD5();
		
		String pass = md.getMD5ofStr(pass1);
		
		initManager.add_admin(user, pass);
		
		return map.findForward(msg);
	}
	
	public ActionForward add_user(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		
		String msg = "add_admin";
		
		String user = request.getParameter("user");
		String pass1 = request.getParameter("pass");
		String mail = request.getParameter("mail");
		String jifen = request.getParameter("jifen");
		String answer = request.getParameter("answer");
		String question = request.getParameter("question");
		
		MD5 md = new MD5();
		
		String pass = md.getMD5ofStr(pass1);
		
		HackuserVO uservo = new HackuserVO();
		uservo.setAnswer(answer);
		uservo.setCreateTime(new Date());
		uservo.setFatiecount(new Integer(0));
		uservo.setHackimg("user.gif");
		uservo.setHackip(request.getRemoteAddr());
		uservo.setHackMail(mail);
		uservo.setHackName(user);
		uservo.setHackPass(pass);
		uservo.setHuitiecount(new Integer(0));
		uservo.setIntegral(Integer.parseInt(jifen));
		uservo.setQuestion(question);
		
		
		initManager.addLap(uservo);
		
		
		return map.findForward(msg);
	}
	
	public ActionForward update_pass_admin(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "update_pass_admin";
		
		String user = request.getParameter("user");
		String pass1 = request.getParameter("pass");
		
		MD5 md = new MD5();
		
		String pass = md.getMD5ofStr(pass1);
		
		initManager.update_pass_admin(user, pass);
		
		return map.findForward(msg);
	}
	
	
}
