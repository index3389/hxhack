/**
 * 
 */
package com.hbsoft.hack.action;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;

import com.hbsoft.hack.form.UserImgForm;
import com.hbsoft.hack.interfaces.UserManager;
import com.hbsoft.hack.vo.HackuserVO;

/**
 * @9:51:07 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class UserImgAction extends DispatchAction
{
	private UserManager userManager;
	
	public void setUserManager(UserManager userManager) 
	{
		this.userManager = userManager;
	}

	
	public ActionForward img(ActionMapping map, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		
		String msg = "img";
		
		UserImgForm fileForm = (UserImgForm)form;
		
		FormFile file = fileForm.getUserfile();
		
		HttpSession session = request.getSession();
		
		ServletContext sc = session.getServletContext();
		
		String dir = sc.getRealPath("/images/user");
		
		String hackName = (String)session.getAttribute("user");
		
		String filename = hackName;
		
		if(file.getFileName().endsWith(".jpg"))
		{
			filename = hackName + ".jpg";
		}
		else if(file.getFileName().endsWith(".gif")) 
		{
			filename = hackName + ".gif";
		}
		
		try
		{
			if(file == null)
			{
				return map.findForward(msg);
			}
			InputStream in = file.getInputStream();
			OutputStream out = new FileOutputStream(dir + "/" + filename);
			
			int b = 0;
			byte[] buff = new byte[1024];
			while((b = in.read(buff,0,124)) != -1)
			{
				out.write(buff,0, b);
			}
			
			in.close();
			out.close();
			file.destroy();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		boolean is = userManager.updateimg(hackName,filename);
		
		System.out.println(is);
		
		HackuserVO userVO = userManager.getUserByName(hackName);
		
		
		request.setAttribute("n",userVO);
		
		return map.findForward(msg);
	}
	
	
}
