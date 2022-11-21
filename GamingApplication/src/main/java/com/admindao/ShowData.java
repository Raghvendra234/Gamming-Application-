package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;

public class ShowData 
{

	public List<UploadEventsBean> getAllData()
	{
	
    List<UploadEventsBean> list=new ArrayList<UploadEventsBean>();	
  
    UploadEventsBean ubean=null;  //Aggregation     
   try 
    {	
	Connection connection=ConnectionProvider.getConnection();	
		
	
	
	String sql="select * from uploadevents";

	PreparedStatement ps=connection.prepareStatement(sql);
    ResultSet rs=ps.executeQuery();
     
    while(rs.next())
    {
    	ubean=new UploadEventsBean(); //composition
    	
    	ubean.setId(rs.getInt(1));
    	ubean.setName(rs.getString(2));
    	ubean.setEmail(rs.getString(3));
    	ubean.setNumber(rs.getString(4));
    	ubean.setTname(rs.getString(5));
    	ubean.setFees(rs.getString(6));
    	ubean.setPwinner(rs.getString(7));
    	ubean.setPloser(rs.getString(8));
    	ubean.setSdate(rs.getString(9));
    	ubean.setLdate(rs.getString(10));
    	ubean.setOvers(rs.getString(11));
    	
    	list.add(ubean);
    }
  } catch (SQLException e)
    {
				e.printStackTrace();
	}
	
	
	return list;	
		
		
		
	}
}
