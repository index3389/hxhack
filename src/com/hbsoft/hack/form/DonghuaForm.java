/**
 * 
 */
package com.hbsoft.hack.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

/**
 * @2:12:24 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class DonghuaForm extends ActionForm
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int donghuaid;
	private String title;
	private String adminName;
	private String content;
	private int type;
	private Date createTime;
	private int downcount;
	private String downsize;
	private String huan;
	private String language;
	private String downpass;
	private FormFile formFile;
	
	
	public FormFile getFormFile() {
		return formFile;
	}
	public void setFormFile(FormFile formFile) {
		this.formFile = formFile;
	}
	public String getDownpass() {
		return downpass;
	}
	public void setDownpass(String downpass) {
		this.downpass = downpass;
	}
	public int getDowncount() {
		return downcount;
	}
	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}
	public String getDownsize() {
		return downsize;
	}
	public void setDownsize(String downsize) {
		this.downsize = downsize;
	}
	public String getHuan() {
		return huan;
	}
	public void setHuan(String huan) {
		this.huan = huan;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getAdminName()
	{
		return adminName;
	}
	public void setAdminName(String adminName)
	{
		this.adminName = adminName;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content) 
	{
		this.content = content;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title) 
	{
		this.title = title;
	}
	public Date getCreateTime()
	{
		return createTime;
	}
	public void setCreateTime(Date createTime) 
	{
		this.createTime = createTime;
	}
	public int getDonghuaid() 
	{
		return donghuaid;
	}
	public void setDonghuaid(int donghuaid)
	{
		this.donghuaid = donghuaid;
	}
	public int getType()
	{
		return type;
	}
	public void setType(int type)
	{
		this.type = type;
	}
}
