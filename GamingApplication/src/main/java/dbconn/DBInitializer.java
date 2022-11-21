package dbconn;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.Statement;
import java.util.StringTokenizer;

public class DBInitializer 
{

	public void createtable(InputStream in)
	{
		try
		{
			byte data[]=new byte[in.available()];
			in.read(data);
			in.close();
			
			StringTokenizer str=new StringTokenizer(new String(data),"/");
			Connection con=ConnectionProvider.getConnection();
			
			Statement stmt=con.createStatement();
			System.out.println("Creating table...");
			
			while(str.hasMoreTokens())
			{
				String Qr=str.nextToken();
				System.out.println(Qr);
				if(Qr.trim().equals("stop"))
				{
					break;
				}
				stmt.execute(Qr);
			}
			System.out.println("table successfully created.....");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		    System.out.println(e);
		}
	}
}
