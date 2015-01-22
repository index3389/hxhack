/**
 * 
 */
package com.hbsoft.hack.interfaces;

import java.util.List;

import com.hbsoft.hack.vo.DonghuaVO;
import com.hbsoft.hack.vo.DownloadVO;
import com.hbsoft.hack.vo.LiterVO;
import com.hbsoft.hack.vo.NewsVO;
import com.hbsoft.hack.vo.SafetyVO;
import com.hbsoft.hack.vo.TopicVO;

/**
 * @时间 2009-12-17 上午02:50:43
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public interface TopicManager
{
	//根据类型(type)得到文章列表(分页)
	public List getTopicByType(int type,int begin,int end);
	
	//根据类型(type)得到文章列表
	public List getTopicByType(int type);
	
	//根据ID得到文章
	public TopicVO getTopicById(int id);
	
	//根据类型(type)得到新闻列表
	public List getNewsByType(int type);
	
	//根据ID得到新闻
	public NewsVO getNewsById(int id);
	
	//根据类型(type)得到新闻列表(分页)
	public List getNewsByType(int type,int begin,int end);
	
	//根据类型(type)得到下载列表(分页)
	public List getDownloadByType(int type,int begin,int end);
	
	//根据类型(type)得到下载列表
	public List getDownloadByType(int type);
	
	//根据类型(type)得到安全公告列表(分页)
	public List getSafetyByType(int type,int begin,int end);
	
	//根据ID得到安全公告
	public DownloadVO getDownloadById(int id);
	
	//根据类型(type)得到安全公告列表
	public List getSafetyByType(int type);
	
	//根据ID得到安全公告
	public SafetyVO getsafetyById(int id);
	
	//根据类型(type)得到安全公告列表
	public List getDonghuaByType(int type);
	
	//根据类型(type)得到安全公告列表
	public List getDonghuaByType(int type,int begin,int end);
	
	//根据ID得到安全公告
	public DonghuaVO getDonghuaById(int id);
	
	//根据类型(type)得到黑客文学列表
	public List getLiterByType(int type,int begin,int end);
	
	//根据ID得到黑客文学
	public LiterVO getLiterById(int id);
	
	//这是提供搜索的方法
	public List hackFind(String vo,String content);
	
	//通用的得到最新文章方法
	public List common_new(String table,int max);
	
	//通用的得到精品文章方法
	public List common_best(String table,int max);
	
	//通用的得到精品文章方法
	public List common_download(String table,int max);
	
	//通用的得到精品文章方法
	public List common_safe(String table,int max);
	
	//通用分页方法
	public List common_fen(String vo,int begin,int max);
	
	//得到总数
	public int getall(String vo);
	
	//首页方法
	public List getIndex(String vo);
	
	//删除文章
	public boolean del_byid(String vo,int id);
	
	
}
