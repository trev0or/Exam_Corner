<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamCorner","root","");
Statement st=conn.createStatement();
if(uname!=null && pass!=null && email!=null){
int i=st.executeUpdate("insert into users(fname,lname,email,uname,pass)values('"+fname+"','"+lname+"','"+email+"','"+uname+"','"+pass+"')");
System.out.println("Data is successfully inserted");
response.sendRedirect("loginht.html");
}
}
catch(Exception e)
{
System.out.println(e);	
e.printStackTrace();
}
%>