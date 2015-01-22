/**
 * 
 */
package com.hbsoft.hack.form;
import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

/**
 * @9:07:31 AM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class DownloadForm extends ActionForm 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private FormFile formFile;
	private Integer downid;
	private String downName;
	private String adminName;
	private String content;
	private Integer type;
	private Integer downsize;
	private String language;
	private String downpass;
	private String updateTime;
	private Integer downcount;
	private String huan;
	private String title;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHuan() {
		return huan;
	}
	public void setHuan(String huan) {
		this.huan = huan;
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
	public Integer getDowncount() 
	{
		return downcount;
	}
	public void setDowncount(Integer downcount) 
	{
		this.downcount = downcount;
	}
	public Integer getDownid()
	{
		return downid;
	}
	public void setDownid(Integer downid)
	{
		this.downid = downid;
	}
	public String getDownName()
	{
		return downName;
	}
	public void setDownName(String downName)
	{
		this.downName = downName;
	}
	public String getDownpass()
	{
		return downpass;
	}
	public void setDownpass(String downpass) 
	{
		this.downpass = downpass;
	}
	public Integer getDownsize()
	{
		return downsize;
	}
	public void setDownsize(Integer downsize) 
	{
		this.downsize = downsize;
	}
	public FormFile getFormFile()
	{
		return formFile;
	}
	public void setFormFile(FormFile formFile)
	{
		this.formFile = formFile;
	}
	public String getLanguage() 
	{
		return language;
	}
	public void setLanguage(String language)
	{
		this.language = language;
	}
	public Integer getType() 
	{
		return type;
	}
	public void setType(Integer type)
	{
		this.type = type;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
}
