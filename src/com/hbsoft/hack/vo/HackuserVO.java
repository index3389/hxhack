/**
 * 
 */
package com.hbsoft.hack.vo;

import java.util.Date;

/**
 * @时间 2009-12-18 上午08:17:36
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class HackuserVO 
{
	private Integer userId;
	private String hackName;
	private String hackPass;
	private String question;
	private String answer;
	private String hackMail;
	private Date createTime;
	private Integer integral;
	private String hackip;
	private String hackimg;
	private Integer fatiecount;
	private Integer huitiecount;
	
	public Date getCreateTime() 
	{
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public String getHackimg() {
		return hackimg;
	}
	public void setHackimg(String hackimg) {
		this.hackimg = hackimg;
	}
	
	public String getHackip() {
		return hackip;
	}
	public void setHackip(String hackip) {
		this.hackip = hackip;
	}
	public String getHackMail() {
		return hackMail;
	}
	public void setHackMail(String hackMail) {
		this.hackMail = hackMail;
	}
	public String getHackName() {
		return hackName;
	}
	public void setHackName(String hackName) {
		this.hackName = hackName;
	}
	public String getHackPass() {
		return hackPass;
	}
	public void setHackPass(String hackPass) {
		this.hackPass = hackPass;
	}
	public Integer getFatiecount() {
		return fatiecount;
	}
	public void setFatiecount(Integer fatiecount) {
		this.fatiecount = fatiecount;
	}
	public Integer getHuitiecount() {
		return huitiecount;
	}
	public void setHuitiecount(Integer huitiecount) {
		this.huitiecount = huitiecount;
	}
	public Integer getIntegral() {
		return integral;
	}
	public void setIntegral(Integer integral) {
		this.integral = integral;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
}
