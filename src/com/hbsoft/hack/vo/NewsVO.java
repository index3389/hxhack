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
public class NewsVO 
{
	private Integer newsid;
	private String adminName;
	private String title;
	private String content;
	private Integer isnew;
	private Integer isbest;
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
	public Integer getIsbest() 
	{
		return isbest;
	}
	public void setIsbest(Integer isbest)
	{
		this.isbest = isbest;
	}
	public Integer getIsnew()
	{
		return isnew;
	}
	public void setIsnew(Integer isnew)
	{
		this.isnew = isnew;
	}
	public Integer getNewsid() 
	{
		return newsid;
	}
	public void setNewsid(Integer newsid)
	{
		this.newsid = newsid;
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
