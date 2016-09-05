<!doctype html>
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
<form action="login1.jsp" id="frm">
<table>
<tr>
<td>Name</td>
<td><input type="text" name="user" ></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass" ></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form>
</div>
<div id="footer">
<p>footer</p>
</div>
</div>

</body>
</html>