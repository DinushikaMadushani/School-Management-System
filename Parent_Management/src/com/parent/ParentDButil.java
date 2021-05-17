package com.parent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ParentDButil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

public static boolean validate(String nic,String sid) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from new_table where nic='"+nic+"'and sid='"+sid+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}


	public static List<Parent> getParent(String nic){
		ArrayList<Parent>Parent = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from  new_table where nic='"+nic+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String nic1 = rs.getString(1);
				String name =rs.getString(2);
				String sid1 = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String job = rs.getString(6);
				String grade = rs.getString(7);
				String clas = rs.getString(8);
				
				Parent p = new Parent(nic1,name,sid1,address,phone,job,grade,clas);
				Parent.add(p);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return Parent;
	}

	
	
	public static boolean updateParent(String nic,String name,String sid,String address,String phone,String job,String grade,String clas ) {
		boolean isSuccess = true;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update new_table set nic='"+nic+"' ,name='"+name+"',sid='"+sid+"',address='"+address+"',phone='"+phone+"',job='"+job+"',grade='"+grade+"',class='"+clas+"'" +"where nic='"+nic+"'";
			int rs = stmt.executeUpdate(sql);	
			
			if(rs > 0) {
					isSuccess= true;
					
				}
				else {
					isSuccess= false;
				}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return isSuccess;
	}
	public static List<Parent> getParentDetails(String nic){
		ArrayList<Parent> par = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from new_table where nic='"+nic+"' ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String nic1 = rs.getString(1);
				String name =rs.getString(2);
				String sid = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String job = rs.getString(6);
				String grade = rs.getString(7);
				String clas = rs.getString(8);
				
				Parent p = new Parent(nic1,name,sid,address,phone,job,grade,clas);
				par.add(p);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return par;
	}
	
	public static boolean deleteParent(String  nic) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from new_table where nic='"+nic+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
public static boolean validate1(String user,String pass) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+user+"'and password='"+pass+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	

}
