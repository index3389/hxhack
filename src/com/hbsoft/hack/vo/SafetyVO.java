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
public class SafetyVO 
{
	private Integer safetyid;
	private String title;
	private String adminName;
	private String content;
	private Integer isnew;
	private Integer ishot;
	private Integer type;
	private Date createTime;
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
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
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getIshot() {
		return ishot;
	}
	public void setIshot(Integer ishot) {
		this.ishot = ishot;
	}
	public Integer getSafetyid() {
		return safetyid;
	}
	public void setSafetyid(Integer safetyid) {
		this.safetyid = safetyid;
	}
	public Integer getIsnew() {
		return isnew;
	}
	public void setIsnew(Integer isnew) {
		this.isnew = isnew;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
}
