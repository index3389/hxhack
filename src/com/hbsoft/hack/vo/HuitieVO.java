/**
 * 
 */
package com.hbsoft.hack.vo;

import java.util.Date;

/**
 * @8:59:19 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class HuitieVO 
{
	private Integer huiid;
	private Integer tieid;
	private String hackName;
	private Date createTime;
	private String content;
	private HackuserVO userVO;
	
	
	public HackuserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(HackuserVO userVO) {
		this.userVO = userVO;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getHackName() {
		return hackName;
	}
	public void setHackName(String hackName) {
		this.hackName = hackName;
	}
	public Integer getHuiid() {
		return huiid;
	}
	public void setHuiid(Integer huiid) {
		this.huiid = huiid;
	}
	public Integer getTieid() {
		return tieid;
	}
	public void setTieid(Integer tieid) {
		this.tieid = tieid;
	}
}
