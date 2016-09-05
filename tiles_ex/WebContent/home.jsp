<!doctype html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<title>Form handling in JSP</title>
</head>
<body>
<%@page errorPage="error.jsp" %>
<%
String name=request.getParameter("user");
String password=request.getParameter("pass");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","password");
	String sql="insert into user1(name,password) values(?,?)";
	PreparedStatement ptmt=con.prepareStatement(sql);
	ptmt.setString(1, name);
	ptmt.setString(2, password);
	int i=ptmt.executeUpdate();
	if(i>0){%>
	<jsp:forward page="show.jsp"></jsp:forward>
		
	<% }
}catch(Exception e){
	e.printStackTrace();
}

/* int z=x/y; 
out.println("User= "+name);
out.println("<br>");
out.println("Password= "+password);*/

%>

</body>
</html>