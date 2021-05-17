package Parentprofile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class parentDBUtill {
	public static List<Parent>validate(String NIC, String StudentID){
		
		ArrayList<Parent> pare = new ArrayList<>(); 
		
		//create database connection 
		String url = "jdbc:mysql://localhost:3306/parent_details";
		String user = "root";
		String password ="DinushikaAlvis";
		
		//validate
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			
			String sql = "select * from customer whrere NIC='"+NIC+"'and StudentID='"+ StudentID+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String NIC1 = rs.getString(1);
				String parentName = rs.getString(2);
				String StudentID1 = rs.getString(3);
				String DOB = rs.getString(4);
				String Street = rs.getString(5);
				String city = rs.getString(6);
				String province = rs.getString(7);
				String email = rs.getString(8);
				String father = rs.getString(9);
				String mother= rs.getString(10);
				String Guidian = rs.getString(11);
				
				Parent p = new Parent(NIC1,parentName,StudentID1,DOB,Street,city,province,email,father,mother,Guidian, Guidian);
				pare.add(p);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return pare;
	}

}
