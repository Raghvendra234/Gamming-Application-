package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbconn.ConnectionProvider;
import dto.RegisterBean;

public class RegisterDao 
{

	public  int insertUser(RegisterBean bean)
	{
		
		try
		{
			Connection connection=ConnectionProvider.getConnection();

PreparedStatement psmt=connection.prepareStatement("insert into registration (Name,Lastname,Email,Password,Number,DateofBirth,Gender,WicketKeeper,Handed,PlayerCatagory) values(?,?,?,?,?,?,?,?,?,?)");

       psmt.setString(1, bean.getName());
       psmt.setString(2, bean.getLastname());
       psmt.setString(3, bean.getEmail());
       psmt.setString(4, bean.getPassword());
       psmt.setString(5, bean.getNumber());
       psmt.setString(6, bean.getDob());
       psmt.setString(7, bean.getGender());
       psmt.setString(8, bean.getWictetkeeper());
       psmt.setString(9, bean.getHanded());
       psmt.setString(10, bean.getPc());
       
       
       int i=psmt.executeUpdate();
//		if(i>0)
//		return 1;
//		else
//		return 0;
//		
		return i;
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		
		return 0;
		
		
		
		
		
		
		
	}
	
}
