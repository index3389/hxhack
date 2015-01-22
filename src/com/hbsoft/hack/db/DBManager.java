/**
 * 
 */
package com.hbsoft.hack.db;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @7:55:21 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class DBManager
{
	private String driver = "com.microsoft.jdbc.sqlserver.SQLServerDriver";
	private String url_backup = "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=DBHack";
	private String url_restore = "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=master";
	private String username = "sa";
	private String password = "sa";
	private Connection con;
	
	public boolean backup(String path)
	{
		boolean is = false;
		
		try
		{
			Class.forName(driver);
			
			con = DriverManager.getConnection(url_backup,username,password);
			
			Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql="backup database DBHack to disk='"+path + "\\" +this.name() +"'";
			
			stmt.executeUpdate(sql);
			
			is = true;
			
		}catch(Exception e)
		{
			System.out.println("发生错误，");
			e.printStackTrace();
		}
		
		return is;
	}
	
	public boolean restore(String filename)
	{
		
		boolean is = false;
		
		try
		{
			Class.forName(driver);	
			
			con = DriverManager.getConnection(url_restore,username,password);		
			
			Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);	
			
			String killconnsql = "exec killspid 'DBHack'";   
		    CallableStatement stt = con.prepareCall(killconnsql);
			stt.execute();
			stt.close();
			
			String sql="restore database DBHack from disk='"+filename+"'";		
			
			stmt.executeUpdate(sql);
			
			is = true;
			
		}catch(Exception e)
		{
			System.out.println("发生错误，");
			e.printStackTrace();
		}
		
		return is;
	}
	public String name()
	{
		String str = null;
		
		Date date = new Date();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		str = format.format(date);
		
		return str + "_DBHack.DAT";
	}
}
