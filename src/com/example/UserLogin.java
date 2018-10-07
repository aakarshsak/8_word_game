package com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserLogin {
	String id,pass;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	public static Connection getCon()
	{
		Connection con=null;
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","abcd123");
		}catch(Exception e){e.printStackTrace();}
		return con;
	}
	
	public static boolean check(String id)
	{
		try{
		Connection con=UserLogin.getCon();
		PreparedStatement st=con.prepareStatement("select * from gameuserlogin where id=?");
		st.setString(1, id);
		
		ResultSet rs=st.executeQuery();
		
		if(rs.next())
			return true;
		}catch(Exception e){e.printStackTrace();}
		return false;
		
	}
	public static String login(String id,String pass)
	{
		String name=null;
		try{
			Connection con=UserLogin.getCon();
			PreparedStatement st=con.prepareStatement("select Name from gameuserlogin where id=? and pass=?");
			st.setString(1, id);
			st.setString(2, pass);
			
			
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				name=rs.getString(1);
			}
			
			
		}catch(Exception e){e.printStackTrace();}
		return name;
	}
	public static boolean signUp(String name,String id,String pass)
	{
		boolean status=false;
		try{
			Connection con=UserLogin.getCon();
			PreparedStatement st=con.prepareStatement("insert into gameuserlogin values('"+name+"','"+id+"','"+pass+"')");
			
			ResultSet rs=st.executeQuery();
			status=rs.next();
			
		}catch(Exception e){e.printStackTrace();}
		
		return status;
	}
	
	/*public static void main(String[] args) {
		
		boolean status=UserLogin.signUp("Aakarsh Sinha", "1si16cs001", "*aloksinha");
		System.out.println(status);
	}*/
}
