//package servlets;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import dao.UploadEventDao;
//import dto.UploadEventsBean;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//
//@WebServlet("/servlets/UploadEventServ")
//public class UploadEventServ extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
//			throws ServletException, IOException {
//	
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
//			throws ServletException, IOException
//	{
//	   response.setContentType("text/html");
//	   PrintWriter out=response.getWriter();
//	   
//	   String  name    = request.getParameter("name");
//	   String  email   = request.getParameter("email");
//	   String  number  = request.getParameter("number");
//	   String  tname   = request.getParameter("tname");
//	   String  fees    = request.getParameter("fees");
//	   String  pwinner = request.getParameter("pwinner");
//	   String  ploser  = request.getParameter("ploser");
//	   String  sdate   = request.getParameter("Sdate");
//	   String  ldate   = request.getParameter("Ldate");
//	   String  over    = request.getParameter("over");
//	   
////	   out.println(name+" "+email);
////	   out.println(number+" "+tname);
////	   out.println(fees+" "+pwinner);
////	   out.println(ploser+" "+sdate);
//	   out.println(ldate+" "+over);
////	   
////	   out.print("hello G");	   
//	   
//	 UploadEventsBean ubean=new UploadEventsBean(); 
//	 
//	   ubean.setName(name);
//	   ubean.setEmail(email);
//	   ubean.setNumber(number);
//	   ubean.setTname(tname);
//	   ubean.setFees(fees);
//	   ubean.setPwinner(pwinner);
//	   ubean.setPloser(ploser);
//	   ubean.setSdate(sdate);
//	   ubean.setLdate(ldate);
//	   ubean.setOver(over);
//	   
//	   
//	 UploadEventDao uploadeventdao=new UploadEventDao();  
//	   
//	  String  msg= uploadeventdao.insertEvent(ubean);
//	  
//	  switch(msg)
//	  {
//	case "success":
//		out.println("Your Event has been Uploaded  successfully !!!");	
//		break;
//          
//		case "fail":
//			out.println("Something is wrong !!!");	
//
//			break;
//			
//		
//		default:
//			break;
//		}
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
