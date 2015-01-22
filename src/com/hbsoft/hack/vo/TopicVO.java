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
public class TopicVO 
{
	private Integer topicid;
	private String title;
	private String author;
	private String content;
	private Integer isnew;
	private Integer isbest;
	private Integer type;
	private Date createTime;
	public String getAuthor()
	{
		return author;
	}
	public void setAuthor(String author) 
	{
		this.author = author;
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
	public Integer getTopicid() 
	{
		return topicid;
	}
	public void setTopicid(Integer topicid)
	{
		this.topicid = topicid;
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
