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
<form action="home.jsp" id="frm">
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
<td>Gender</td>
<td><input type="radio" name="gender" value="male" checked>MALE</td>
<td><input type="radio" name="gender" value="female">FEMALE</td>
</tr>
<tr>
<td>City</td>
<td><input type="text" name="city" ></td>
</tr>
<tr>
<td>Pin Code</td>
<td><input type="text" name="pin" ></td>
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