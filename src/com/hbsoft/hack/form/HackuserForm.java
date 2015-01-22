/**
 * 
 */
package com.hbsoft.hack.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

/**
 * @6:58:16 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class HackuserForm extends ActionForm 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int userId;
	private String hackName;
	private String hackPass;
	private String hackMail;
	private String question;
	private String answer;
	private Date createTime = new Date();
	private int integral = 0;
	private String hackip = "127.0.0.1";
	private String hackimg = "user.gif";
	
	public Date getCreateTime()
	{
		return createTime;
	}
	public void setCreateTime(Date createTime) 
	{
		this.createTime = createTime;
	}
	public String getHackimg() 
	{
		return hackimg;
	}
	public void setHackimg(String hackimg)
	{
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
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
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
