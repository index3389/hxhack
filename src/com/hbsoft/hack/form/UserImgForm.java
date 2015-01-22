/**
 * 
 */
package com.hbsoft.hack.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

/**
 * @9:53:37 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class UserImgForm extends ActionForm
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private FormFile userfile;
	public FormFile getUserfile() {
		return userfile;
	}
	public void setUserfile(FormFile userfile) {
		this.userfile = userfile;
	}
	
}
