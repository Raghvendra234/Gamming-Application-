package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbconn.ConnectionProvider;
import dto.UploadEventsBean;


public class UploadEventDao 
{

	
	public  int insertEvent(UploadEventsBean upbean)
	{
		
		try
		{
			Connection connection=ConnectionProvider.getConnection();

PreparedStatement psmt=connection.prepareStatement("insert into uploadevents (Name,Emailid,Number,LeagueName,Fees,PrizeForWinner,PrizeForLoser,StartingDate,EndingDate,Overs) values(?,?,?,?,?,?,?,?,?,?)");

       psmt.setString(1,  upbean.getName());
       psmt.setString(2,  upbean.getEmail());
       psmt.setString(3,  upbean.getNumber());
       psmt.setString(4,  upbean.getTname());
       psmt.setString(5,  upbean.getFees());
       psmt.setString(6,  upbean.getPwinner());
       psmt.setString(7,  upbean.getPloser());
       psmt.setString(8,  upbean.getSdate());
       psmt.setString(9,  upbean.getLdate());
       psmt.setString(10, upbean.getOvers());
       
       
       int i=psmt.executeUpdate();
		//if(i>0)
		//return "success";
		//else
		//return "fail";
		 return i;
		
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return 0;
		
}
}
