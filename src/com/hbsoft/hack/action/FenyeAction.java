/**
 * 
 */
package com.hbsoft.hack.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.interfaces.TopicManager;

/**
 * @7:28:59 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class FenyeAction extends DispatchAction
{

	
	private TopicManager topicManager;
	
	public void setTopicManager(TopicManager topicManager)
	{
		this.topicManager = topicManager;
	}
	public ActionForward common(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "fen";
		
		String p = request.getParameter("p");//得到当前的页数(第几页)
		
		String t = request.getParameter("t");//得到类型
		
		int type = Integer.parseInt(t);
		
		String[] str = this.getType(type);
		
		String vo = str[0];
		String name = str[1];
			
		int all = topicManager.getall(vo);//总共有多少记录数
		
		int page = 1;//当前的页数
		
		if(p == null)
		{
			page = 1;
		}
		else
		{
			page = Integer.parseInt(p);
		}
		
		int per = 21;//每页显示的记录数
		
		int all_page = 1;//总共有多少叶
		
		if(all % per == 0)
		{
			all_page = all / per;
		}
		else
		{
			all_page = all / per + 1;
		}
		
		List list = topicManager.common_fen(vo, (page-1)*per,page*per);
		
		request.setAttribute("p",new Integer(page));
		
		request.setAttribute("list",list);
		
		request.setAttribute("count",new Integer(all));
		
		request.setAttribute("all_page",new Integer(all_page));
		
		request.setAttribute("name",name);
		
		request.setAttribute("t",new Integer(type));
		
		return map.findForward(msg);
	}
	
	public String[] getType(int type)
	{
		
		String vo = "DonghuaVO";
		String name = "动画教程";
		
		if(type == 1)
		{
			vo = "SafetyVO";
			name = "安全公告";
		}
		else if(type == 2)
		{
			vo = "NewsVO";
			name = "新闻资讯";
		}
		else if(type == 3)
		{
			vo = "DonghuaVO";
			name = "动画教程";
		}
		else if(type == 4)
		{
			vo = "LiterVO";
			name = "黑客文摘";
		}
		else if(type == 5)
		{
			vo = "DownloadVO";
			name = "软件下载";
		}
		else if(type == 6)
		{
			vo = "TopicVO";
			name = "技术文章";
		}
		
		String[] str = new String[2];
		str[0] = vo;
		str[1] = name;
		
		return str;
	}
	
}
