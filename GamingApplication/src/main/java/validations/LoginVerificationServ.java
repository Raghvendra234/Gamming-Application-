package validations;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconn.ConnectionProvider;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LoginVerificationServ")
public class LoginVerificationServ extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
	
		PrintWriter out=response.getWriter();
		
		try
		{
		Connection connection=ConnectionProvider.getConnection();	
			
		String n=request.getParameter("email");
		String p=request.getParameter("password");
		
		PreparedStatement ps=connection.prepareStatement("Select Email from registration where email=? and password=? ");
		ps.setString(1, n);
		ps.setString(2, p);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			RequestDispatcher rd=request.getRequestDispatcher("successhome.jsp");
			rd.forward(request, response);
			
		}
		else
		{
			out.println("<font color=red size 18>Login Fialed !!!");
			out.println("<a href=Login.jsp>Try Again !!!");
		}
		
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	}

}
