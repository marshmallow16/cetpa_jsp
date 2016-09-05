<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>jdbc example</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 100px;
	height: 22px;
	text-align: left;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}
</style>
</head>
<body>
	
		<center>Registration Form </center>
		
		<div>
			<form:form method="post" action="userLogin" modelAttribute="user" id="frm">
				<table>
				
			<tr>
						<td>Email :</td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td>Password :</td>
						<td><form:input path="password" /></td>
					</tr>
			
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
					</tr>
					<tr>
						
						<td colspan="2"><a href="getList">Click Here to See User List</a></td>
					</tr>
				</table>
			</form:form>
		</div>
	
</body>
</html>