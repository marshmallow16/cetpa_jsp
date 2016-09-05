<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>layout</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div id="container">
<div id="header">
<jsp:include page="header.jsp"></jsp:include>
</div>
<div id="menu">
<p>menu</p>
</div>
<div id="content">

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
HttpSession s=request.getSession();
String s1=(String)s.getAttribute("name");
%>
&nbsp;
&nbsp;
&nbsp;
<h1><%="WELCOME\t"+s1%></h1>
</div>
<div id="footer">
<p>footer</p>
</div>
</div>

</body>
</html>