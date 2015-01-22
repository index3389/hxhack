/**
 * 
 */
package com.hbsoft.hack.form;

import org.apache.struts.action.ActionForm;

/**
 * @时间 2010-1-13 上午09:14:06
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class LapForm extends ActionForm 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4880947209879396942L;
	
	private int type;
	private String title;
	private String content;
	private int id;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
}
