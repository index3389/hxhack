/**
 * 
 */
package com.hbsoft.hack.vo;

import java.util.Date;

/**
 * @2:12:24 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class DonghuaVO 
{
	private Integer donghuaid;
	private String title;
	private String adminName;
	private String content;
	private Integer type;
	private Date createTime;
	private Integer downcount;
	private String downsize;
	private String huan;
	private String language;
	private String downpass;
	private String downName;
	
	
	public String getDownName() {
		return downName;
	}
	public void setDownName(String downName) {
		this.downName = downName;
	}
	public String getDownpass() {
		return downpass;
	}
	public void setDownpass(String downpass) {
		this.downpass = downpass;
	}
	public Integer getDowncount() {
		return downcount;
	}
	public void setDowncount(Integer downcount) {
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
	public Integer getDonghuaid() 
	{
		return donghuaid;
	}
	public void setDonghuaid(Integer donghuaid)
	{
		this.donghuaid = donghuaid;
	}
	public Integer getType()
	{
		return type;
	}
	public void setType(Integer type)
	{
		this.type = type;
	}
}
