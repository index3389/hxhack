/**
 * 
 */
package com.hbsoft.hack.action;
import java.io.InputStream;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;
import com.hbsoft.hack.interfaces.AdminManager;
import com.hbsoft.hack.vo.DownloadVO;
/**
 * @时间 2010-1-19 上午07:17:56
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class DownloadEditAction extends DispatchAction 
{
	private AdminManager adminManager;

	public void setAdminManager(AdminManager adminManager) 
	{
		this.adminManager = adminManager;
	}

	
	public ActionForward down(ActionMapping map, ActionForm form, HttpServletRequest request, 
			HttpServletResponse response) throws Exception 
	{
		
		String msg = "download";
		
		DynaActionForm dyna = (DynaActionForm)form;
		
		int id = ((Integer)dyna.get("did")).intValue();
		String language = dyna.getString("language");
		Date date = (Date)dyna.get("updateTime");
		String title = dyna.getString("title");
		String content = dyna.getString("infoContent");
		String pass = dyna.getString("downpass");
		
		@SuppressWarnings("unused")
		FormFile file = (FormFile)dyna.get("formFile");
		
		DownloadVO download = new DownloadVO();
		download.setContent(content);
		download.setUpdateTime(date);
		download.setDownid(id);
		download.setDownpass(pass);
		download.setLanguage(language);
		download.setTitle(title);
		
		adminManager.update_download(download);

		return map.findForward(msg);
	}
	
	public boolean upload(FormFile file)
	{
		
		boolean is = false;
		
		try
		{
			if(file == null)
			{
				return is;
			}
			InputStream in = file.getInputStream();
//			OutputStream out = new FileOutputStream(path +"/"+ filename);
			
			@SuppressWarnings("unused")
			int b = 0;
			byte[] buff = new byte[1024];
			while((b = in.read(buff,0,124)) != -1)
			{
			//	out.write(buff,0, b);
			}
			
			in.close();
			//out.close();
			file.destroy();
			
			is = true;
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return true;
	}
	
}
