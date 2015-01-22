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

import com.hbsoft.hack.interfaces.AdminManager;

/**
 * @时间 2010-1-19 上午07:17:56
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class CartoonEditAction extends DispatchAction 
{
	@SuppressWarnings("unused")
	private AdminManager adminManager;

	public void setAdminManager(AdminManager adminManager) 
	{
		this.adminManager = adminManager;
	}

	
	public ActionForward topic(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "topic";
		
		
		
		return map.findForward(msg);
	}
	
}
