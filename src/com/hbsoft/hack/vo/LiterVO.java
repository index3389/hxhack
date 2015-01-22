/**
 * 
 */
package com.hbsoft.hack.vo;

import java.util.Date;

/**
 * @11:07:14 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class LiterVO 
{
	private Integer literid;
	private String adminName;
	private String title;
	private String content;
	private Integer isnew;
	private Integer ishot;
	private Integer type;
	private Date createTime;
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
	public Date getCreateTime() 
	{
		return createTime;
	}
	public void setCreateTime(Date createTime)
	{
		this.createTime = createTime;
	}
	public Integer getIshot() {
		return ishot;
	}
	public void setIshot(Integer ishot) {
		this.ishot = ishot;
	}
	public Integer getIsnew()
	{
		return isnew;
	}
	public void setIsnew(Integer isnew)
	{
		this.isnew = isnew;
	}
	public Integer getLiterid() {
		return literid;
	}
	public void setLiterid(Integer literid) {
		this.literid = literid;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title) 
	{
		this.title = title;
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
