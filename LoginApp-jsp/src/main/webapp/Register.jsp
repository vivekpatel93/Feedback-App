<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>    


            <%
            String UserName=request.getParameter("username");
            String Name=request.getParameter("name");
            String Email=request.getParameter("email");
            String Password=request.getParameter("pwd");
            try {
    			Class.forName("com.mysql.jdbc.Driver").newInstance();
    			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login_info","root","root");
    			Statement stat=con.createStatement();
    			stat.execute("insert into register_data values('"+UserName+"','"+Name+"','"+Email+"','"+Password+"')");
    			response.sendRedirect("Register.html");
    		}
    		catch(Exception ex){
    			out.println("EXX"+ex); 
    		}
            
            %>              
