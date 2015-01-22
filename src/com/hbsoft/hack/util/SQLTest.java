/**
 * 
 */
package com.hbsoft.hack.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @6:53:58 PM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class SQLTest {

	/**
	 * @param args
	 */
	public void test1()
	{
		try
		{
			Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance(); 
			String url="jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=master"; 
			String user="sa"; 
			String password="sa"; 
			Connection conn= DriverManager.getConnection(url,user,password); 
			
			Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			String sql="backup database DBHack to disk='d:\\xncback.dat'";
			//String sql="restore database DBHack from disk='d:\\xncback.dat'";
			
			//String sql="restore database test from disk='d:\\xncback.dat'";
			stmt.executeUpdate(sql);
			System.out.println("++++++++++++++");
		}
		catch(Exception ee)
		{ 
			System.out.println(ee.toString());
		}
	}
	
	public void test2()
	{
		try
		{
			Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance(); 
			String url="jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=master"; 
			String user="sa"; 
			String password="sa"; 
			Connection conn= DriverManager.getConnection(url,user,password); 
			
			Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			//String sql="backup database test to disk='d:\\xncback.dat'";
			//String sql="restore database DBHack from disk='d:\\xncback.dat'";
			
			String sql="restore database DBHack from disk='d:\\xncback.dat'";
			stmt.executeUpdate(sql);
			System.out.println("++++++++++++++");
		}
		catch(Exception ee)
		{ 
			System.out.println(ee.toString());
		}
	}
	
	public static void main(String[] args)
	{
		new SQLTest().test2();
	}

}
