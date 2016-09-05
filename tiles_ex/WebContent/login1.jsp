<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>Form handling in JSP</title>
<link rel="stylesheet" href="style.css"> 
</head>
<body>
<%@page errorPage="error.jsp" %>
<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
HttpSession s=request.getSession();
s.setAttribute("name", user);
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","password");
	PreparedStatement ptmt = con.prepareStatement("select name, password from user1 where name =? and password=?");
	ptmt.setString(1, user);
    ptmt.setString(2, pass);
    ResultSet rs = ptmt.executeQuery();
    if(rs.next()){
	RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
	rd.forward(request, response);
		} 
		else{
			out.println("<font color=red>Either user name or password is wrong.</font>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
}catch(Exception e){
	e.printStackTrace();
}
		%>
</body>
</html>