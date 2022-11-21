//package servlets;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import dao.RegisterDao;
//import dto.RegisterBean;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//@WebServlet("/servlets/RegistrationServ")
//public class RegistrationServ extends HttpServlet {
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
//			throws ServletException, IOException 
//	{
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
//		
//		String  name      = request.getParameter("name");
//		String  lastname     = request.getParameter("lastname");
//		String  email     = request.getParameter("email");
//		String  password  = request.getParameter("password");
//		String  number    = request.getParameter("number");
//		String  dob       = request.getParameter("dob");
//		String  gender    = request.getParameter("gender1");
//		String  wkeeper   = request.getParameter("keeper");
//		String  handed    = request.getParameter("hand");
//		String  pcatagory[] = request.getParameterValues("pcatagory");
//
//			RegisterBean bean=new RegisterBean();
//	
//	     bean.setName(name);
//	     bean.setLname(lastname);
//	     bean.setEmail(email);
//	     bean.setPassword(password);
//	     bean.setNumber(number);
//	     bean.setDob(dob);
//	     bean.setGender(gender);
//	     bean.setWkeeper(wkeeper);
//	     bean.setHanded(handed);
//	     bean.setPc(pc);
//	     
//	     
//	     RegisterDao registerdao=new RegisterDao(); 
//	     
//	      String  result=registerdao.insertUser(bean);
//	      
//	      switch (result) 
//	 		{
//			case "success":
//			out.println("Your registration has been completed by successfully !!!");	
//			break;
//	          
//			case "fail":
//				out.println("Something is wrong !!!");	
//
//				break;
//				
//			
//			default:
//				break;
//			}
//	     
//	     
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	}
//
//}
