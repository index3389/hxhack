/**
 * 
 */
package com.hbsoft.hack.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.interfaces.AdminManager;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @时间 2010-1-19 上午07:17:56
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class TopicEditAction extends DispatchAction 
{
	private AdminManager adminManager;

	public void setAdminManager(AdminManager adminManager) 
	{
		this.adminManager = adminManager;
	}

	
	public ActionForward topic(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "topic";
		
		//DynaActionForm frm = (DynaActionForm)form;
//		
//		String title = frm.getString("title");
//		String author = frm.getString("author");
//		String content = frm.getString("infoContent");
//		
//		String hot = frm.getString("hot");
//		String pick = frm.getString("pick");
//		
//		int id = Integer.parseInt(frm.getString("tid"));
//		
		
		
		return map.findForward(msg);
	}
	
	public ActionForward get(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "topicvo";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		TopicVO topic = (TopicVO)adminManager.getObject(id,"TopicVO");
		
		request.setAttribute("t",topic);
		
		return map.findForward(msg);
	}
	
	public ActionForward down(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "downvo";
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		DownloadVO topic = (DownloadVO)adminManager.getObject(id,"DownloadVO");
		
		request.setAttribute("t",topic);
		
		return map.findForward(msg);
	}
	
	public ActionForward tedit(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "ok";
		
		DynaActionForm dyna = (DynaActionForm)form;
		
		String temp_title = dyna.getString("title");
		
		Integer temp_id = (Integer)dyna.get("tid");
		
		Integer temp_pick = (Integer)dyna.get("pick");
		
		int id = temp_id.intValue();
		String title = temp_title;
		String author = dyna.getString("author");
		String content = dyna.getString("infoContent");
		int pick = temp_pick.intValue();
		
		TopicVO topic = new TopicVO();
		topic.setAuthor(author);
		topic.setContent(content);
		topic.setTitle(title);
		topic.setTopicid(id);
		topic.setIsbest(pick);
		
		adminManager.update_topic(topic);
		
		return map.findForward(msg);
	}
	
}
