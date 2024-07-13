<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String Name=request.getParameter("name");
String Contact_No=request.getParameter("contact");
String Email=request.getParameter("email");
String Message=request.getParameter("message");
try {
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login_info","root","root");
	Statement stat=con.createStatement();
	stat.execute("insert into feedback_data values('"+Name+"','"+Contact_No+"','"+Email+"','"+Message+"')");
	response.sendRedirect("Main.html");
}
catch(Exception ex){
	out.println("EXX"+ex); 
}
%>
</body>
</html>