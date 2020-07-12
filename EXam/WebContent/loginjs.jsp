<%@page import="com.sun.webkit.ContextMenu.ShowContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<%@page import="java.sql.*,java.util.*"%>
<%

String userid=request.getParameter("uname");
String pwd=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamCorner","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users where uname='"+userid+"'and pass='"+pwd+"'");
if(rs.next())
{
session.setAttribute("userid",userid);
response.sendRedirect("menu.html");
}
else
{
out.println("Invalid password !!");
response.sendRedirect("loginht.html");	

}

%>
</body>
</html>
