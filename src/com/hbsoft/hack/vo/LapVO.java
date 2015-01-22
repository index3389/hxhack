/**
 * 
 */
package com.hbsoft.hack.vo;

/**
 * @时间 2010-1-8 上午11:41:24
 *
 * @作者 大轮明王
 *
 * @版权所以 仅供参考
 */
public class LapVO 
{
	private Integer lapId;
	private Integer type;
	private String lapName;
	private String content;
	
	private int tieCount;
	private String tieLast;
	private int tieTaday;
	
	
	
	public int getTieCount() {
		return tieCount;
	}
	public void setTieCount(int tieCount) {
		this.tieCount = tieCount;
	}
	public String getTieLast() {
		return tieLast;
	}
	public void setTieLast(String tieLast) {
		this.tieLast = tieLast;
	}
	public int getTieTaday() {
		return tieTaday;
	}
	public void setTieTaday(int tieTaday) {
		this.tieTaday = tieTaday;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLapName() {
		return lapName;
	}
	public void setLapName(String lapName) {
		this.lapName = lapName;
	}
	public Integer getLapId() {
		return lapId;
	}
	public void setLapId(Integer lapId) {
		this.lapId = lapId;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
}
