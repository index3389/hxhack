/**
 * 
 */
package com.hbsoft.hack.interfaces;

import java.util.List;

import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @2:11:36 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public interface AdminManager 
{
	//保存文章
	public boolean saveTopic(Object topic);
	
	//根据ID得到文章
	public TopicVO getTopicById(int id);
	
	//得到所有用户
	public int getalluser();
	
//	得到所有用户(分页)
	public List getalluser(int begin,int max);
	
	//根据类型得到总数
	public int getall(String type);
	
	//根据ID删除文章
	public boolean delTopicById(int id);
	
	//管理员登陆
	public boolean checkName(String sysName,String sysPass);
	
	//根据类型(type)得到下载列表(分页)
	public List getDownloadByType(int type,int begin,int end);
	
	//根据ID得到文章
	public DownloadVO getDownloadById(int id);
	
	//管理前台的分页方法
	public List getContent(Object vo,int begin,int end);
	
	//根据ID得到一个OBJECT
	public Object getObject(int id,String vo);
	
	//更改数据
	public boolean update_topic(TopicVO vo);
	
//	更改数据
	public boolean update_download(DownloadVO vo);
	
//	更改数据
	public boolean update_cartoon(DonghuaVO vo);
	
}
