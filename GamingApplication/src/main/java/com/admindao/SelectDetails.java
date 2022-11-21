package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;

public class SelectDetails 
{

	public static UploadEventsBean getDetailsbyId(int id)
	{
		UploadEventsBean u=new UploadEventsBean();
		Connection con=ConnectionProvider.getConnection();
		
		try {
		
			PreparedStatement ps=con.prepareStatement("Select * from uploadevents where id=?");
		     ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
		   	
		   	while(rs.next())
		   	{
		   		
		   	u.setId(rs.getInt(1));
		   	u.setName(rs.getString(2));
		   	u.setEmail(rs.getString(3));
		   	u.setNumber(rs.getString(4));
		   	u.setTname(rs.getString(5));
		   	u.setFees(rs.getString(6));
		   	u.setPwinner(rs.getString(7));
		   	u.setPloser(rs.getString(8));
		   	u.setSdate(rs.getString(9));
		   	u.setLdate(rs.getString(10));
		   	u.setOvers(rs.getString(11));
		   	
		   	
		   	}
		
		
		
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return u;
	}
	
	}











