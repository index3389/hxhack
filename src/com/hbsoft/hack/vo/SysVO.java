/**
 * 
 */
package com.hbsoft.hack.vo;


/**
 * @时间 2009-12-18 上午08:17:36
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public class SysVO 
{
	private Integer sysid;
	private String sysName;
	private String sysPass;
	private Integer role;
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	public Integer getSysid() {
		return sysid;
	}
	public void setSysid(Integer sysid) {
		this.sysid = sysid;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getSysPass() {
		return sysPass;
	}
	public void setSysPass(String sysPass) {
		this.sysPass = sysPass;
	}
	
}
