package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;

public class SelectDao
{

	
	
	
	public List<UploadEventsBean> getAllData()
	{
	Connection connection=ConnectionProvider.getConnection();
	
	List<UploadEventsBean> list=new ArrayList<UploadEventsBean>();
	
	UploadEventsBean upbean=null;   //aggregation
	try
	{
		
	Statement statement=connection.createStatement();

	ResultSet rs=statement.executeQuery("Select * from uploadevents");
	
	while(rs.next())
	{
		upbean=new UploadEventsBean();  //composition
		
		upbean.setId     (rs.getInt(1));
	    upbean.setName   (rs.getString(2));
	    upbean.setEmail  (rs.getString(3));
	    upbean.setNumber (rs.getString(4));
	    upbean.setTname  (rs.getString(5));
	    upbean.setFees   (rs.getString(6));
	    upbean.setPwinner(rs.getString(7));
	    upbean.setPloser (rs.getString(8));
	    upbean.setSdate  (rs.getString(9));
	    upbean.setLdate  (rs.getString(10));
	    upbean.setOvers  (rs.getString(11));
		
	    list.add(upbean);
	     return list;
	}
	
	
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}
			
		return list;
		
	}
	
	
	
	
	
}
