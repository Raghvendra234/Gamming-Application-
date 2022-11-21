package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.adminbean.AdminBean;

import dbconn.ConnectionProvider;

public class AdminDao 
{

	public String adminLogin(AdminBean adminBean)
	{
	try
	{
	Connection	con=ConnectionProvider.getConnection();
   
    PreparedStatement ps=con.prepareStatement("select * from adminlogin where email=? and password=?");
    
    ps.setString(1, adminBean.getEmail());
    ps.setString(2, adminBean.getPassword());
    
    ResultSet result=ps.executeQuery();

    if(result.next())
    {
    String 	status=result.getString("status");
    
          if(status.equalsIgnoreCase("active"))
           {
    	     return "success";
           }
            else
                {
    	         return "You are not active User !!! ";
                }
    }
    else
    {
    	return "fail"; 
    }
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return "Fail";
	}
}
















