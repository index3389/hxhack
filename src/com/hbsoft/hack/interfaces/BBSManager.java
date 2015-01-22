/**
 * 
 */
package com.hbsoft.hack.interfaces;

import java.util.List;

import com.hbsoft.hack.vo.FatieVO;

/**
 * @9:06:36 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public interface BBSManager 
{
	
	//保存发帖，保存回帖
	public boolean saveInvitation(Object obj);
	
	//根据发帖的ID得到发帖内容(包括发帖人的信息)
	public FatieVO getInvitationById(Integer id);
	
	//根据发帖的ID得到所有的回帖
	@SuppressWarnings("unchecked")
	public List getALLhuitie(int id);
	
	//根据发帖的type得到所有的回帖个数
	public int getALL(int type);
	
	//得到所有发帖（带分页功能）
	public List getInvitation(int type,int begin,int end);
	
	//得到所有发帖（带分页功能）
	public List getInvitation(int type,int count);
	
	//得到所有发帖（带分页功能）
	public int getInvitation(int type);
	
	//得到所有发帖（带分页功能）
	public String lastByType(int type);
	
	//发帖成功时，加2分
	public boolean add_two(String hackName,int munber);
	
	//回帖成功时，加1分
	public boolean add_one(String hackName,int munber);
	
	//最新帖子
	public List getnews_invitation(int count);
	
	//精华帖子
	public List getbest_invitation(int count);
	
	//热门帖子
	public List gethot_invitation(int count);
	
	//得到今日发帖(根据type)
	public List info_taday(int type);
	
	//发帖成功时，设置最后发帖人
	public boolean setup_last(int id,String hackName);
	
	//论坛搜索
	public List search(String content);
	
	//根据用户名得到所有发帖
	public List getFatieByName(String hackName,int begin,int end);
	
	//根据用户名得到所有发帖
	public List getHuitieByName(String hackName,int begin,int end);
	
	public List getHuitieByName(String hackName);
	
	//根据用户名得到所有回帖
	public int getFatieByName(String hackName);
	
	//根据ID和用户名查帖子
	public boolean replay(int id,String hackName);
	
	//更具ID删除帖子
	public void del_tie(int id);
}
