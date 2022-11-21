package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;

public class UpdateDetails 
{

	public static int update(UploadEventsBean upbean)
	{
	Connection con=ConnectionProvider.getConnection();
	
	try {
	
	String sql="update uploadevents set Name=?,Emailid=?,Number=?,LeagueName=?,Fees=?,PrizeForWinner=?,PrizeForLoser=?,StartingDate=?,EndingDate=?,Overs=? where Id=?";
	
	PreparedStatement ps=con.prepareStatement(sql);
	
	ps.setInt(1, upbean.getId());
	ps.setString(2, upbean.getName());
	ps.setString(3, upbean.getEmail());
	ps.setString(4, upbean.getNumber());
	ps.setString(5, upbean.getTname());
	ps.setString(6, upbean.getFees());
	ps.setString(7, upbean.getPwinner());
	ps.setString(8, upbean.getPloser());
	ps.setString(9, upbean.getSdate());
	ps.setString(10, upbean.getLdate());
	ps.setString(11, upbean.getOvers());
	

	
	int i=ps.executeUpdate();
	
	return i;
	
	
	
	
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	
	return 0;
	}
}
