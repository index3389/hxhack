/**
 * 
 */
package com.hbsoft.hack.interfaces;

import com.hbsoft.hack.vo.HackuserVO;
import java.util.List;

/**
 * @时间 2009-12-17 上午02:50:27
 *
 * @作者 刘阳
 *
 * @版权所以 仅供参考
 */
public interface UserManager
{
	//登陆验证
	public boolean checkUser(String userName,String passWord);
	
	//得到当天的注册人数
	public int getTadayMax();
	
	//用户注册
	public boolean saveUser(HackuserVO userVO);
	
	//检查用户是否注册
	public boolean isRegister(String hackName);
	
	//根据邮箱，安全问题，问题答案，来找回密码	
	public boolean backPass(String[] info);
	
	//根据用户名更改密码
	public boolean updatepass(String user,String pass);
	
	//更具用户名得到该用户的所有信息
	public HackuserVO getUserByName(String hackName);
	
	//	更具用户名更改用户图片
	public boolean updateimg(String hackName,String img);
	
	//检测邮箱是否已注册
	public boolean checkEmail(String mail);
	
	//根据用户名得到用户的所有回帖
	
	
	//删除用户
	public boolean del_user(int id);
	
	//删除帖子
	public boolean del_tie(int id);
	
	//删除帖子之前先查看该帖子有没有回帖
	public boolean getall_huitie(int tieid);
	
	//根据用户查看该用户有没有发帖
	public List getall_fatie(String hackName);
	
	//得到所有帖子
	public int getalltie();
	
	//得到所有帖子（分页）
	public List getTie(int begin,int max);
	
	
	//修改帖子的属性
	public boolean update_best(String type,String id);
	
	//得到帖子（所属板块）
	public String getLapName(int type);
	
	
}
