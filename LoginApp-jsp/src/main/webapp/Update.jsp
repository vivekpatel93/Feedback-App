<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String UserName=request.getParameter("username");
String Name=request.getParameter("name");
String Email=request.getParameter("email");
String Password=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login_info","root","root");
Statement stat=con.createStatement();
stat.execute("update register_data set Name='"+Name+"',Email='"+Email+"',Password='"+Password+"' where UserName='"+UserName+"'");

response.sendRedirect("Login.html");
%>