<%@page import="bean.Employee"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList" %>
<jsp:useBean id="ob" class="bean.Employee"/>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<table border="2">
<tr>
<th>ID</th>
<th>Name</th>
<th>Address</th>
<th colspan="2">Action</th>
</tr>
<%
ArrayList<Employee> list=ob.show();
Iterator<Employee> itr=list.iterator();
while(itr.hasNext())
{
	Employee e=(Employee)itr.next();
	%>
	<tr>
	<td><%=e.getId() %></td>
	<td><%=e.getName() %></td>
	<td><%=e.getAddress() %></td>
	<td><a href='delete.jsp?id=<%=e.getId()%>'>DELETE</a></td>
	<td><a href='edit.jsp?id=<%=e.getId() %>'>EDIT</a></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>