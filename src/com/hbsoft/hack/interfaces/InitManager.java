/**
 * 
 */
package com.hbsoft.hack.interfaces;

import java.util.List;

import com.hbsoft.hack.vo.LapVO;

/**
 * @11:49:33 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public interface InitManager
{
	
	//得到论坛所有版块
	public List Lap();
	
	//得到论坛的基本信息
	public List BaseInfo();
	
	//得到版块(根据type)
	public List byType(int type);
	
	//添加版块
	public boolean addLap(Object obj);
	
	public int getById(int id);
	
	//根据ID得到板块
	public LapVO byId(int id);
	
	//删除ID的板块
	public boolean delById(int id);
	
	//修改板块
	public boolean update(LapVO lap);
	
	//根据板块ID得到该板块下面有没有帖子
	public boolean isorhas(int id);
	
	//添加管理员
	public boolean add_admin(String user,String pass);
	
	//更改管理员密码
	public boolean update_pass_admin(String user,String pass);
	
	//验证是否存在
	public boolean exist(String user);
	
	
}
