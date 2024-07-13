<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>    
    

    <%
    String UserName=request.getParameter("username");
	String Password=request.getParameter("pwd");
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		System.out.println("Class");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login_info","root","root");
		System.out.println("Conn");
		Statement stat=con.createStatement();
		System.out.println("stat");
		ResultSet rs=stat.executeQuery("select*from register_data where UserName='"+UserName+"' && Password='"+Password+"'");
		
		if(rs.next()==true) {
			response.sendRedirect("Main.jsp"); 
		}
		else {
			response.sendRedirect("Error.jsp");
		}
	%>              
