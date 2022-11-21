package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;

public class Validation 
{
	
	public List<UploadEventsBean> getAllData()
{
	List<UploadEventsBean> list=new ArrayList<UploadEventsBean>();
	UploadEventsBean u=new UploadEventsBean();
	try 
	{
	Connection con=ConnectionProvider.getConnection();
	
		PreparedStatement ps=con.prepareStatement("Select * from uploadevents");
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			
			u.setId     (rs.getInt(1));
		    u.setName   (rs.getString(2));
		    u.setEmail  (rs.getString(3));
		    u.setNumber (rs.getString(4));
		    u.setTname  (rs.getString(5));
		    u.setFees   (rs.getString(6));
		    u.setPwinner(rs.getString(7));
		    u.setPloser (rs.getString(8));
		    u.setSdate  (rs.getString(9));
		    u.setLdate  (rs.getString(10));
		    u.setOvers  (rs.getString(11));
			
		    list.add(u);
		    
		    return list;
		}
			
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	
	return list;
		
}
}
