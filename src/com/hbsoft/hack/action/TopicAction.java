/**
 * 
 */
package com.hbsoft.hack.action;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.dao.BBSDAO;
import com.hbsoft.hack.interfaces.TopicManager;
import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.LiterVO;
import com.hbsoft.hack.vo.NewsVO;
import com.hbsoft.hack.vo.SafetyVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @时间 2009-12-17 上午02:52:34
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class TopicAction extends DispatchAction
{

	private TopicManager topicManager;
	
	private BBSDAO bbs;
	
	public void setTopicManager(TopicManager topicManager)
	{
		this.topicManager = topicManager;
	}
	
	public void setBbs(BBSDAO bbs)
	{
		this.bbs = bbs;
	}

	public ActionForward hackMain(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "fail";

		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward topic(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "topic";
		
		int type = Integer.parseInt(request.getParameter("e"));//类型
		
		String page = request.getParameter("c");//得到当前的页数（第几页）
		
		List list = null;
		
		list = topicManager.getTopicByType(type);//查询类型为type的所有个数
		
		request.setAttribute("len",new Integer(list.size()));
		
		int b = 1;//第几页
		
		int count = 1;//共有几页
		
		int to = 21;//每页显示几条数据
		
		if(count%to == 0)
		{
			count = list.size() / to;
		}
		else
		{
			count = list.size() / to + 1;
		}
				
		if(page == null)
		{
			list = topicManager.getTopicByType(type,0,to);
		}
		else
		{
			b = Integer.parseInt(page);
			
			list = topicManager.getTopicByType(type,(b-1)*to,b*to);	
		}	
		request.setAttribute("p",new Integer(b));
		
		request.setAttribute("topicList",list);
		
		request.setAttribute("count",new Integer(count));
		
		
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward safety(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		
		String msg = "safe";
		
		List list[] = new ArrayList[4];
		
		for(int k = 0;k < 4; k++)
		{
			list[k] = topicManager.getSafetyByType(k+1,0,20);
			request.setAttribute("safe"+k,list[k]);
		}
				
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward news(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "news";
		
		List list[] = new ArrayList[4];
		
		for(int k = 0;k < 4; k++)
		{
			list[k] = topicManager.getNewsByType(k+1,0,20);
			request.setAttribute("news"+k,list[k]);
		}
				
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward download(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "download";
		
		int type = Integer.parseInt(request.getParameter("e"));
		
		String page = request.getParameter("c");
		
		List list = null;
		
		list = topicManager.getDownloadByType(type);
		
		request.setAttribute("len",new Integer(list.size()));
		
		int b = 1;
		
		int count = 1;
		
		if(count%21 == 0)
		{
			count = list.size() / 21;
		}
		else
		{
			count = list.size() / 21 + 1;
		}
				
		if(page == null)
		{
			list = topicManager.getDownloadByType(type,0,21);
		}
		else
		{
			b = Integer.parseInt(page);
			
			list = topicManager.getDownloadByType(type,(b-1)*21,b*21);	
		}	
		request.setAttribute("p",new Integer(b));
		
		request.setAttribute("topicList",list);
		
		request.setAttribute("count",new Integer(count));
		
		return map.findForward(msg);

	}
	
	public ActionForward donghua(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay6";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		DonghuaVO topic = topicManager.getDonghuaById(id);
		
		request.setAttribute("essay",topic);
		
		return map.findForward(msg);
	}

	public ActionForward getTopic(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		TopicVO topic = topicManager.getTopicById(id);
		
		request.setAttribute("essay",topic);
		
		return map.findForward(msg);
	}
	
	public ActionForward getnews(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay1";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		NewsVO topic = topicManager.getNewsById(id);
		
		request.setAttribute("essay",topic);
		
		return map.findForward(msg);
	}
	
	public ActionForward getdownload(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay4";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		DownloadVO topic = topicManager.getDownloadById(id);
		
		request.setAttribute("essay",topic);
		
		return map.findForward(msg);
	}
	
	public ActionForward getsafety(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay1";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		System.out.println(id);
		
		SafetyVO topic = topicManager.getsafetyById(id);
		
		request.setAttribute("essay",topic);
		
		return map.findForward(msg);
	}

	@SuppressWarnings("unchecked")
	public ActionForward gettechnology(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay2";

		List news[] = new ArrayList[4];
		
		for(int i = 0; i < 4;i++)
		{
			news[i] = topicManager.getTopicByType(i+1,0,16); 
			request.setAttribute("news"+i,news[i]);
		}
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward cartoon(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay5";

		List news[] = new ArrayList[6];
		
		for(int i = 0; i < 6;i++)
		{
			news[i] = topicManager.getDonghuaByType(i+1,0,16); 
			request.setAttribute("news"+i,news[i]);
		}
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward liter(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay3";
				
		List news[] = new ArrayList[4];
		
		for(int i = 0; i < 4;i++)
		{
			news[i] = topicManager.getLiterByType(i+1,0,16); 
			request.setAttribute("news"+i,news[i]);
		}
		
		return map.findForward(msg);
	}
	
	public ActionForward getliter(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "essay1";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		LiterVO topic = topicManager.getLiterById(id);
		
		request.setAttribute("essay",topic);
		
		return map.findForward(msg);
	}
	
	
	@SuppressWarnings("unchecked")
	public ActionForward topicRight(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right1";
		
		List[] list = new List[3];
		
		list[0] = topicManager.common_new("TopicVO",13);
		list[1] = topicManager.common_new("DownloadVO",13);
		list[2] = topicManager.common_new("DonghuaVO",13);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		request.setAttribute("right3",list[2]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward topicRight1(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("TopicVO",11);
		list[1] = topicManager.common_best("TopicVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward topicRight2(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right6";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("TopicVO",11);
		list[1] = topicManager.common_best("TopicVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward topicRight3(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right7";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("TopicVO",11);
		list[1] = topicManager.common_best("TopicVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward downloadRight(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right2";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("DownloadVO",11);
		list[1] = topicManager.common_download("DownloadVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward cartoonRight(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right3";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("SafetyVO",11);
		list[1] = topicManager.common_safe("SafetyVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward literRight(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right4";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("LiterVO",11);
		list[1] = topicManager.common_safe("LiterVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	@SuppressWarnings("unchecked")
	public ActionForward newsRight(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "right5";
		
		List[] list = new List[2];
		
		list[0] = topicManager.common_new("NewsVO",11);
		list[1] = topicManager.common_best("NewsVO",10);
		
		request.setAttribute("right1",list[0]);
		request.setAttribute("right2",list[1]);
		
		return map.findForward(msg);
	}
	
	public ActionForward del_topic(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "del_topic";
		
		String hack = (String)request.getParameter("id");
		String vo = request.getParameter("v");
		
		String[] res = hack.split(",");
		
		int len = res.length;
		
		for(int i=0;i<len;i++)
		{
			if(res[i].length() > 0)
			{
				topicManager.del_byid(vo,Integer.parseInt(res[i]));
			}
		}
		
		return map.findForward(msg);
	}
	
	
	@SuppressWarnings("unchecked")
	public ActionForward index(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "index";
		
		List[] list = new List[8];
		
		list[0] = topicManager.getIndex("NewsVO");
		list[1] = topicManager.getIndex("TopicVO");
		list[2] = topicManager.getIndex("DownloadVO");
		list[3] = topicManager.getIndex("DonghuaVO");
		list[4] = topicManager.getIndex("SafetyVO");
		list[5] = topicManager.getIndex("LiterVO");
		list[6] = topicManager.getIndex("FatieVO");
		list[7] = bbs.gethot_invitation(20);
	
		
		request.setAttribute("list0",list[0]);
		request.setAttribute("list1",list[1]);
		request.setAttribute("list2",list[2]);
		request.setAttribute("list3",list[3]);
		request.setAttribute("list4",list[4]);
		request.setAttribute("list5",list[5]);
		request.setAttribute("list6",list[6]);
		request.setAttribute("list7",list[7]);
		
		return map.findForward(msg);
	}
	
	
	@SuppressWarnings("unchecked")
	public ActionForward find(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		String msg = "find1";
		
		String t = request.getParameter("t");
		String content = request.getParameter("c");
		
		int type = Integer.parseInt(t);
		
		List list = new ArrayList();
		
		String vo = null;
		
		if(type == 1)
		{
			
			vo = "TopicVO";
			
			list = topicManager.hackFind(vo, content);
			
		}
		else if(type == 2)
		{
			
			vo = "DownloadVO";
			
			list = topicManager.hackFind(vo, content);
			
			msg = "find2";
		}
		else if(type == 3)
		{
			
			vo = "DonghuaVO";
			
			list = topicManager.hackFind(vo, content);
			
			msg = "find3";
			
		}
		request.setAttribute("result",list);
		
		return map.findForward(msg);
		
	}
	
}
