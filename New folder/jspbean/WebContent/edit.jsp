<%@page import="bean.Employee"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList" %>
<jsp:useBean id="ob" class="bean.Employee"/>
<jsp:setProperty property="*" name="ob"/>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form action="update.jsp">
<table border="2">
<tr>
<th>ID</th>
<th>Name</th>
<th>Address</th>
<th colspan="2">Action</th>
</tr>
<%
ArrayList<Employee> list=ob.edit();
Iterator<Employee> itr=list.iterator();
while(itr.hasNext())
{
	Employee e=(Employee)itr.next();
	%>
	<tr><td><input type="text" name="id" value="<%=e.getId()%>" readonly></td>
	    <td><input type="text" name="name" value="<%=e.getName()%>"></td>
	    <td><input type="text" name="address" value="<%=e.getAddress()%>"></td>
	    <td><input type="submit" value="Update"></td>
	</tr>
	<%
}
%>
</table>
</form>
</body>
</html>