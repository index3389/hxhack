/**
 * 
 */
package com.hbsoft.hack.form;

import org.apache.struts.action.ActionForm;

/**
 * @4:54:58 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class InvitationForm extends ActionForm
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String title;
	private Integer xtype;
	private String content;
	private Integer type;
	private Integer replay;
	
	
	public Integer getReplay() {
		return replay;
	}
	public void setReplay(Integer replay) {
		this.replay = replay;
	}
	public String getContent() {
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
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getXtype() {
		return xtype;
	}
	public void setXtype(Integer xtype) {
		this.xtype = xtype;
	}
}
