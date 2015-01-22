/**
 * 
 */
package com.hbsoft.hack.vo;

import java.util.Date;

/**
 * @8:56:08 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class FatieVO 
{
	private Integer tieid;
	private String title;//帖子标题
	private String hackName;//发帖人
	private Integer type;
	private Date createTime;//发帖时间
	private String content;//发帖内容
	private Integer xtype;
	private String lasthui;//最后回复
	private Integer count;
	private Integer best;
	private Integer replay;//
	private Integer is;
	
	private String lapName;//板块名称
	
	
	private HackuserVO userVO;
	
	
	public HackuserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(HackuserVO userVO) {
		this.userVO = userVO;
	}
	public String getLasthui() {
		return lasthui;
	}
	public void setLasthui(String lasthui) {
		this.lasthui = lasthui;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
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
	public Integer getTieid() {
		return tieid;
	}
	public void setTieid(Integer tieid) {
		this.tieid = tieid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getXtype() {
		return xtype;
	}
	public void setXtype(Integer xtype) {
		this.xtype = xtype;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getBest() {
		return best;
	}
	public void setBest(Integer best) {
		this.best = best;
	}
	public Integer getReplay() {
		return replay;
	}
	public void setReplay(Integer replay) {
		this.replay = replay;
	}
	public Integer getIs() {
		return is;
	}
	public void setIs(Integer is) {
		this.is = is;
	}
	public String getLapName() {
		return lapName;
	}
	public void setLapName(String lapName) {
		this.lapName = lapName;
	}
}
