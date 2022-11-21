package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbconn.ConnectionProvider;

public class DeleteEventsDao 
{

	public int delete(int id)
	{
	try {	
	Connection connection=ConnectionProvider.getConnection();
		
	
	PreparedStatement ps=connection.prepareStatement("delete from uploadevents where id=?");
	
	ps.setInt(1, id);
	
	int i=ps.executeUpdate();
	
	return i;
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
		
		return 0;
		
	}
}
