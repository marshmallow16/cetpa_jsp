
<%@page import="bean.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="bean.Employee" %>
<%@page import="java.util.*" %>
<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="ob"></jsp:setProperty>
<!doctype html>
<html>
<body>
<form action="update.jsp">
<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Address</th>
<th>Update</th>
</tr>
<%
long id=Long.parseLong(request.getParameter("id"));
SessionFactory fact= HibernateUtil.getSessionFactory();
Session sess= fact.openSession();
org.hibernate.Transaction transaction=null;
try {
	transaction= sess.beginTransaction();
	Employee e1= (Employee)sess.get(Employee.class, id);
    %>
	<tr><td><input type="text" name="id" value="<%=e1.getId() %>" readonly></td>
	<td><input type="text" name="name" value="<%=e1.getName()%>"></td>
	<td><input type="text" name="address" value="<%=e1.getAddress() %>"></td>
	<td><input type="submit" value="update">
	</tr>
	<%
}
catch(HibernateException e){
	e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>