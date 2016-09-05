<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<title>Form handling in JSP</title>
</head>
<body>
<%
String id=request.getParameter("id");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","password");
	String sql="select * from user1 where id=?";
	PreparedStatement ptmt=con.prepareStatement(sql);
	ptmt.setString(1, id);
	ResultSet rs=ptmt.executeQuery();
	%>
	<table>
	<tr><th>ID</th>
		<th>Name</th>
		<th>Password</th>
	</tr>
	<%
	while(rs.next()){ %>
	<tr>
	<td><input type="text" name="id" value="<%=rs.getInt(1) %>"></td>
	<td><input type="text" name="user" value="<%=rs.getString(2) %>"></td>
	<td><input type="text" name="pass" value="<%=rs.getString(3) %>"></td>
	</tr>
	<% }
}catch(Exception e){
	e.printStackTrace();
}


%>
</table>
</body>
</html>