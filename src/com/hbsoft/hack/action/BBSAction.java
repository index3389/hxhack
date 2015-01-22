/**
 * 
 */
package com.hbsoft.hack.action;
import java.util.ArrayList;
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

import com.hbsoft.hack.dao.BBSDAO;
import com.hbsoft.hack.form.InvitationForm;
import com.hbsoft.hack.interfaces.InitManager;
import com.hbsoft.hack.interfaces.UserManager;
import com.hbsoft.hack.util.KeyWord;
import com.hbsoft.hack.vo.FatieVO;
import com.hbsoft.hack.vo.HackuserVO;
import com.hbsoft.hack.vo.HuitieVO;
import com.hbsoft.hack.vo.LapVO;

/**
 * @9:28:36 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class BBSAction extends DispatchAction
{
	private BBSDAO bbs;
	
	private UserManager userManager;
	
	private InitManager initManager;
	
	public void setInitManager(InitManager initManager) {
		this.initManager = initManager;
	}

	public void setUserManager(UserManager userManager) 
	{
		this.userManager = userManager;
	}
	
	public void setBbs(BBSDAO bbs)
	{
		this.bbs = bbs;
	}


	public ActionForward bbs(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "bbs";
		
		List[] lap_list = new List[2];
		
		lap_list[0] = initManager.byType(1);
		lap_list[1] = initManager.byType(2);
		
		Iterator itor1 = lap_list[0].iterator();
		
		while(itor1.hasNext())
		{
			LapVO lap = (LapVO)itor1.next();
			
			int type = lap.getLapId();
			
			int tieCount = bbs.getInvitation(type);
			
			lap.setTieCount(tieCount);
			
			lap.setTieLast(bbs.lastByType(type));
			
			lap.setTieTaday(bbs.info_taday(type).size());
		}
		
		request.setAttribute("lap1",lap_list[0]);
		
		
		Iterator itor2 = lap_list[1].iterator();
		
		while(itor2.hasNext())
		{
			LapVO lap = (LapVO)itor2.next();
			
			int type = lap.getLapId();
			
			int tieCount = bbs.getInvitation(type);
			
			lap.setTieCount(tieCount);
			
			lap.setTieLast(bbs.lastByType(type));
			
			lap.setTieTaday(bbs.info_taday(type).size());
		}
		
		request.setAttribute("lap2",lap_list[1]);
		
		
		List list[] = new List[3];
		list[0] = bbs.getnews_invitation(8);
		list[1] = bbs.getbest_invitation(8);
		list[2] = bbs.gethot_invitation(8);

		request.setAttribute("news",list[0]);
		request.setAttribute("best",list[1]);
		request.setAttribute("hot",list[2]);
			
		return map.findForward(msg);
	}
	
	public ActionForward add_lap(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "add_lap";
		
		List[] lap_list = new List[2];
		
		lap_list[0] = initManager.byType(1);
		lap_list[1] = initManager.byType(2);
		
		request.setAttribute("lap1",lap_list[0]);
		request.setAttribute("lap2",lap_list[1]);
		
		return map.findForward(msg);
	}
	
	public ActionForward save_f(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "fail";
		
		
		HttpSession session = request.getSession();
		
		String hackName = null;
		
		if(session.getAttribute("user") == null)
		{
			return map.findForward("no_user");
		}
		else 
		{
			hackName = (String)session.getAttribute("user");
		}
		InvitationForm invitation = (InvitationForm)form;
		
		String content = invitation.getContent();
		
		ServletContext sc = request.getSession(true).getServletContext();
		Integer inter = (Integer)sc.getAttribute("bbs_basic5");
		
		String title = invitation.getTitle();
		
		if(inter != null && inter.intValue() == 1)
		{
			if(KeyWord.keyword(sc,title))
			{
				return map.findForward("keyword");
			}
			
			if(KeyWord.keyword(sc,content))
			{
				return map.findForward("keyword");
			}
		}		
		
		int type = invitation.getType();
		int xtype = invitation.getXtype();
		Integer replay = invitation.getReplay();
		
		
		FatieVO tie = new FatieVO();
		
		tie.setContent(content);
		tie.setCreateTime(new Date());
		tie.setHackName(hackName);
		tie.setTitle(title);
		tie.setXtype(new Integer(xtype));
		tie.setType(new Integer(type));
		tie.setLasthui(hackName);
		tie.setBest(new Integer(0));
		tie.setCount(new Integer(0));
		tie.setReplay(replay);
		tie.setBest(new Integer(0));
		
		boolean is = bbs.saveInvitation(tie);
		
		int bbs_inter = 2;
		
		if(sc.getAttribute("fatie") != null)
		{
			Integer inter2 = (Integer)sc.getAttribute("fatie");
			
			bbs_inter = inter2.intValue();
		}
		
		if(is)
		{
			
			boolean add = bbs.add_two(hackName,bbs_inter);
			
			if(add)
			{
				msg = "ok";
			}
		}
		
		return map.findForward(msg);
	}
	
	public ActionForward get_invitation(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "tie";
		
		String t = request.getParameter("t");
		
		String p = request.getParameter("p");//当前第几页
		
		int c = 1;//当前第几页
		
		int all_page = 1; //共几页
		
		int all = 1; //共几条记录
		
		int p_m = 5;//每页显示多少页
		
		ServletContext sc = request.getSession(true).getServletContext();
		Integer sc_page = (Integer)sc.getAttribute("page");
		if(sc_page != null)
		{
			try
			{
				p_m = sc_page.intValue();
				
			}catch(NumberFormatException e)
			{
				e.printStackTrace();
				System.out.println("数据转换错误" + e);
			}
		}
		
		int type = Integer.parseInt(t); 
		
		all = bbs.getALL(type);
		
		
		if(all % p_m == 0)
		{
			all_page = all / p_m;
		}
		else
		{
			all_page = all / p_m + 1;
		}
		
		
		if(p != null)
		{
			c = Integer.parseInt(p);
		}
	
		
		List list = bbs.getInvitation(type,p_m*(c - 1),p_m * c);
		
		int types = Integer.parseInt(t);
		
		int tt = initManager.getById(types);
		
		if(tt == 2)
		{
			msg = "tie2";
		}
		
		request.setAttribute("tie_1",list);
		request.setAttribute("p",new Integer(c));
		request.setAttribute("all",new Integer(all));
		request.setAttribute("p_a",new Integer(all_page));
		request.setAttribute("p_m",new Integer(p_m));
		request.setAttribute("t",t);
		
		return map.findForward(msg);
	}
	
	public ActionForward best(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "best";
		
		List list = bbs.getbest_invitation(20);
		
		request.setAttribute("res",list);
		
		return map.findForward(msg);
	}
	
	public ActionForward lap(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "lap";
		
		List list = initManager.Lap();
		
		request.setAttribute("lap",list);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward invitation(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "invitation";
		
		String t = request.getParameter("id");
	
		int id = Integer.parseInt(t); 
		
		HuitieVO huitie = null;
		
		List hui_list = new ArrayList();
		
		List list = bbs.getALLhuitie(id);
		Iterator iter = list.iterator();
		while(iter.hasNext())
		{
			huitie = (HuitieVO)iter.next();
			String hackName = huitie.getHackName();
			HackuserVO hackuser = userManager.getUserByName(hackName);
			huitie.setUserVO(hackuser);
			hui_list.add(huitie);
		}
		
		String hackName = (String)request.getSession(true).getAttribute("user");
		
		FatieVO tie = bbs.getInvitationById(id);
		
		int is = 0;
			
		if(tie.getReplay() == 1)
		{
			if(hackName == null)
			{
				is = 1;
			}
			else
			{
				if(tie.getHackName().equals(hackName))
				{
					is = 0;
				}
				else
				{
					
					boolean iss = bbs.replay(id, hackName);

					if(iss)
					{
						is = 0;
					}
					else
					{
						is = 1;
					}
				}
			}
		}
		else
		{
			is = 0;
		}
		
		request.setAttribute("is",new Integer(is));
		
		HackuserVO userVO = userManager.getUserByName(tie.getHackName());
		tie.setUserVO(userVO);
		
		
		request.setAttribute("text_tie",tie);
		request.setAttribute("hui_tie",hui_list);
		
		return map.findForward(msg);
	}
	
	public ActionForward restore(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "fail";
		
		String t = request.getParameter("id");
		
		String con = request.getParameter("content");
		
		HttpSession session = request.getSession();
		
		ServletContext sc = session.getServletContext();
		Integer inter = (Integer)sc.getAttribute("bbs_basic5");
		
		if(inter != null && inter.intValue() == 1)
		{
			if(KeyWord.keyword(sc,con))
			{
				return map.findForward("keyword");
			}
		}
		
		int bbs_inter = 1;
		
		if(sc.getAttribute("huitie") != null)
		{
			Integer inter2 = (Integer)sc.getAttribute("huitie");
			
			bbs_inter = inter2.intValue();
		}
		
		String hackName = (String)session.getAttribute("user");
		
		HuitieVO hui = new HuitieVO();
		hui.setContent(con);
		hui.setCreateTime(new Date());
		hui.setHackName(hackName);
		hui.setTieid(new Integer(Integer.parseInt(t)));
		
		boolean is = bbs.saveInvitation(hui);
		
		if(is)
		{	
			boolean add = bbs.add_one(hackName,bbs_inter);
			boolean last = bbs.setup_last(Integer.parseInt(t), hackName);
			
			if(add && last)
			{
				msg = "restore";
				session.setAttribute("ids",t);
			}
		}
		
		return map.findForward(msg);
	}
	
	
	
	@SuppressWarnings("unchecked")
	public ActionForward back(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "invitation";
		
		HttpSession session = request.getSession();
		
		String t = (String)session.getAttribute("ids");
	
		int id = Integer.parseInt(t); 
		
		HuitieVO huitie = null;
		
		List hui_list = new ArrayList();
		
		List list = bbs.getALLhuitie(id);
		Iterator iter = list.iterator();
		while(iter.hasNext())
		{
			huitie = (HuitieVO)iter.next();
			String hackName = huitie.getHackName();
			HackuserVO hackuser = userManager.getUserByName(hackName);
			huitie.setUserVO(hackuser);
			hui_list.add(huitie);
		}
		
		FatieVO tie = bbs.getInvitationById(id);
		
		HackuserVO userVO = userManager.getUserByName(tie.getHackName());
		tie.setUserVO(userVO);
		
		
		request.setAttribute("text_tie",tie);
		request.setAttribute("hui_tie",hui_list);
		
		if(request.getSession().getAttribute("ids") != null)
		{
			request.getSession().setAttribute("ids",null);
		}
		
		return map.findForward(msg);
	}
	
	public ActionForward search(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "res";
		
		String content = new String(request.getParameter("c").getBytes("iso8859_1"),"UTF-8");
		
		request.setAttribute("res",bbs.search(content));
			
		return map.findForward(msg);
	}
	
	public ActionForward quick(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "res";
				
		String type = request.getParameter("type");
		
		int xtype = Integer.parseInt(type);
		
		List list = bbs.getListByDate(xtype,20);
		
		request.setAttribute("res",list);
			
		return map.findForward(msg);
	}	
	
	public ActionForward f_byName(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "byname";
		
		HttpSession session = request.getSession();
		
		String hackName = (String)session.getAttribute("user");
		
		String page = request.getParameter("p");
		
		List list = new ArrayList();
		
		int pageCount = bbs.getFatieByName(hackName);//共有多少条记录
		
		@SuppressWarnings("unused")
		int count = 1;//共有多少叶
		
		int p = 1;
		
		if(pageCount % 9 == 0)
		{
			count = pageCount / 9;
		}
		else
		{
			count = pageCount / 9 + 1;
		}
		
		if(page == null)
		{
			
			list = bbs.getFatieByName(hackName,0,9);
		}
		else
		{
			p = Integer.parseInt(page);
			
			list = bbs.getFatieByName(hackName,9*(p-1),p*9);
			
		}		
		
		request.setAttribute("f_list",list);
		request.setAttribute("alllist",new Integer(pageCount));
		request.setAttribute("p",new Integer(p));
		request.setAttribute("allp",new Integer(count));
		
		return map.findForward(msg);
	}
	
	public ActionForward j_byName(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "jing";
		
		HttpSession session = request.getSession();
		
		String hackName = (String)session.getAttribute("user");
		
		String page = request.getParameter("p");
		
		List list = new ArrayList();
		
		int pageCount = bbs.getFatieByName(hackName);//共有多少条记录
		
		@SuppressWarnings("unused")
		int count = 1;//共有多少叶
		
		int p = 1;
		
		if(pageCount % 9 == 0)
		{
			count = pageCount / 9;
		}
		else
		{
			count = pageCount / 9 + 1;
		}
		
		if(page == null)
		{
			
			list = bbs.getFatieByName(hackName,0,9);
		}
		else
		{
			p = Integer.parseInt(page);
			
			list = bbs.getFatieByName(hackName,9*(p-1),p*9);
			
		}		
		
		request.setAttribute("f_list",list);
		request.setAttribute("alllist",new Integer(pageCount));
		request.setAttribute("p",new Integer(p));
		request.setAttribute("allp",new Integer(count));
		
		return map.findForward(msg);
	}
	

}
