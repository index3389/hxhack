/**
 * 
 */
package com.hbsoft.hack.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.hbsoft.hack.form.LapForm;
import com.hbsoft.hack.interfaces.InitManager;
import com.hbsoft.hack.vo.LapVO;

/**
 * @2:25:04 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class LapAction extends DispatchAction
{
	
	private InitManager initManager;

	public void setInitManager(InitManager initManager) 
	{
		this.initManager = initManager;
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
	
	public ActionForward edit(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		
		String msg = "get_lap";
		
		int id = Integer.parseInt((String)request.getParameter("id"));
		
		LapVO lap = initManager.byId(id);
		
		request.setAttribute("lap",lap);
		
		return map.findForward(msg);
	}
	
	public ActionForward update(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		
		String msg = "add_lap";
		
		LapForm lap = (LapForm)form;
		
		int id = lap.getId();
		String lapName = lap.getTitle();
		String content = lap.getContent();
		
		LapVO lapVO = new LapVO();
		lapVO.setLapId(new Integer(id));
		lapVO.setContent(content);
		lapVO.setLapName(lapName);
		
	    initManager.update(lapVO);
		
		return map.findForward(msg);
	}
	
	public ActionForward del(ActionMapping map, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		
		String msg = "add_lap";
		
		int id = Integer.parseInt((String)request.getParameter("id"));
		
		initManager.delById(id);
		
		return map.findForward(msg);
	}
	
	
	
}
