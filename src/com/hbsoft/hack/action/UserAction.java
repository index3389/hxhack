/**
 * 
 */
package com.hbsoft.hack.action;


import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.form.HackuserForm;
import com.hbsoft.hack.interfaces.UserManager;
import com.hbsoft.hack.util.MD5;
import com.hbsoft.hack.vo.FatieVO;
import com.hbsoft.hack.vo.HackuserVO;

/**
 * @时间 2009-12-16 上午01:28:10
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class UserAction extends DispatchAction
{
	
	private UserManager userManager;
	
	public void setUserManager(UserManager userManager) 
	{
		this.userManager = userManager;
	}
	public ActionForward userLogin(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "fail";
		
		HackuserForm dyna = (HackuserForm)form;
		
		MD5 md = new MD5();
		
		String user = dyna.getHackName();
		String pass = md.getMD5ofStr(dyna.getHackPass());
		
		boolean is = userManager.checkUser(user, pass);
		
		if(is)
		{
			msg = "ok";
			
			HackuserVO userVO = userManager.getUserByName(user);
			request.getSession(true).setAttribute("user",user);
			request.getSession(true).setAttribute("userVO",userVO);
		}
		
		return map.findForward(msg);
	}
	public ActionForward saveUser(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "saveFail";
		
		HackuserVO userVO = new HackuserVO();
		
		MD5 md = new MD5();
		
		HackuserForm userForm = (HackuserForm)form;
		
		String mail = userForm.getHackMail();
		
		boolean isreg = true;
		
		ServletContext sc = request.getSession(true).getServletContext();
		
		if(sc.getAttribute("bbs_basic3") != null)
		{
			Integer temp = (Integer)sc.getAttribute("bbs_basic3");
			
			if(temp.intValue() == 1)
			{
				if(userManager.checkEmail(mail))
				{
					return map.findForward("only_mail");
				}
			}
		}
	
		
		int bbs_inter = 0;
		
		if(sc.getAttribute("zhuce") != null)
		{
			Integer inter2 = (Integer)sc.getAttribute("zhuce");
			
			bbs_inter = inter2.intValue();
		}
		
		
		userVO.setHackName(userForm.getHackName());
		userVO.setHackPass(md.getMD5ofStr(userForm.getHackPass()));
		userVO.setHackMail(userForm.getHackMail());
		userVO.setQuestion(userForm.getQuestion());
		userVO.setAnswer(userForm.getAnswer());
		userVO.setCreateTime(new Date());
		userVO.setIntegral(new Integer(bbs_inter));
		userVO.setHackip(request.getRemoteAddr());
		userVO.setHackimg("user.gif");
		userVO.setFatiecount(new Integer(0));
		userVO.setHuitiecount(new Integer(0));
		
		
		isreg = userManager.isRegister(userVO.getHackName());
		
		if(isreg)
		{
			msg = "isreg";
		}
		else
		{
			boolean is = userManager.saveUser(userVO);
			
			if(is)
			{
				msg = "saveOK";
			}
		}
		
		
		return map.findForward(msg);
	}
	
	
	public ActionForward backpass(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "backFail";
		
		HackuserForm userForm = (HackuserForm)form;
		
		String n = userForm.getHackName();
		String m = userForm.getHackMail();
		String q = userForm.getQuestion();
		String a = userForm.getAnswer();
		
		String[] info = {n,m,q,a};
		
		boolean is = userManager.backPass(info);
		
		if(is)
		{
			msg = "backOK";
			request.getSession().setAttribute("passUser",n);
		}
		
		return map.findForward(msg);
	}
	
	public ActionForward updatePassword(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "backFail";

		String u = (String)request.getSession().getAttribute("passUser");
		String p = ((HackuserForm)form).getHackPass();
		
		if(u != null)
		{
			boolean is = userManager.updatepass(u,p);
			
			if(is)
			{
				msg = "passOK";
			}
		}
		
		return map.findForward(msg);
	}
	
	public ActionForward userInfo(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "userLeft";
		
		String y = request.getParameter("y");
		
		if("2".equals(y))
		{
			msg = "user2";
		}
		
		request.setAttribute("userinfo",request.getParameter("c"));
		
		return map.findForward(msg);
	}
	
	public ActionForward getUser(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "getuser";
		
		HttpSession session = request.getSession(true);
		
		String hackName = (String)session.getAttribute("user");
		
		HackuserVO userVO = userManager.getUserByName(hackName);
		
		request.setAttribute("n",userVO);
		
		return map.findForward(msg);
	}
	
	public ActionForward img(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "img";
		
		String hackName = (String)request.getSession().getAttribute("user");
		
		HackuserVO userVO = userManager.getUserByName(hackName);
		
		request.setAttribute("n",userVO);
		
		return map.findForward(msg);
	}
	
	
	@SuppressWarnings("unchecked")
	public ActionForward all_tie(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "all_tie";
		
		String page = request.getParameter("p");
		
		int p = 1;//当前第几页
		int all = userManager.getalltie();//总共有帖子的记录数
		int all_page = 1;//共有几页
		int per = 10;//每页显示几页
		
		if(page != null)
		{
			p = Integer.parseInt(page);
		}
		
		if(all % per == 0)
		{
			all_page = all / per;
		}
		else
		{
			all_page = all / per + 1;
		}
		
		List list = userManager.getTie((p-1)*per,p*per);
		
		Iterator iter = list.iterator();
		
		FatieVO tievo = null;
		
		while(iter.hasNext())
		{
			tievo = (FatieVO)iter.next();
			tievo.setLapName(userManager.getLapName(tievo.getType()));
		}
		
		request.setAttribute("list",list);//帖子内容
		request.setAttribute("p",new Integer(p));//当前第几页
		request.setAttribute("all_page",new Integer(all_page));//当前共有几页
		request.setAttribute("all",new Integer(all));//总记录数
		
		return map.findForward(msg);
	}
	

	public ActionForward del_tie(ActionMapping map, ActionForm form, HttpServletRequest request,
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
				userManager.del_tie(Integer.parseInt(res[i]));
			}
		}
		
		return map.findForward(msg);
	}
	
}
