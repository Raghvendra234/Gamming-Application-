package com.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;

public class UpdateEventsAdminDao 
{
		
	public int updateData(UploadEventsBean updateBean)
	{
		int i=0;
		try {	
	Connection connection=ConnectionProvider.getConnection();
	
	
	PreparedStatement ps=connection.prepareStatement(
	"update uploadevents set Name=?,Emailid=?,Number=?,LeagueName=?,Fees=?,PrizeForWinner=?,PrizeForLoser=?,StartingDate=?,EndingDate=?,Overs=? where Id=?");
	
	ps.setInt(1, updateBean.getId());
	ps.setString(2, updateBean.getName());
	ps.setString(3, updateBean.getEmail());
	ps.setString(4, updateBean.getNumber());
	ps.setString(5, updateBean.getTname());
	ps.setString(6, updateBean.getFees());
	ps.setString(7, updateBean.getPwinner());
	ps.setString(8, updateBean.getPloser());
	ps.setString(9, updateBean.getSdate());
	ps.setString(10, updateBean.getLdate());
	ps.setString(11, updateBean.getOvers());
	
	i=ps.executeUpdate();
		
		
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
		return i;
		
	}

}
