<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bean.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="bean.Employee" %>

<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean>	
<jsp:setProperty property="*" name="ob"/>

<!doctype html>
<html>
<body>
<table border="1">
<tr>
<th>Id</th>
<th>Name</th>
<th>Address</th>
<th colspan="2">Action</th>
</tr>
<%
SessionFactory fact= HibernateUtil.getSessionFactory();
Session sess= fact.openSession();
org.hibernate.Transaction transaction=null;
try {
	transaction= sess.beginTransaction();
    Criteria crit = sess.createCriteria(Employee.class);
    List list=crit.list();
    Iterator itr=list.iterator();
    while(itr.hasNext()){
    	Employee e = (Employee)itr.next();%>
    	<tr>
    	<td><%=e.getId()%></td>
    	<td><%=e.getName()%></td>
    	<td><%=e.getAddress()%></td>
    	<td><a href="delete.jsp?id=<%=e.getId() %>">DELETE</a></td>
		<td><a href="edit.jsp?id=<%=e.getId() %>">EDIT</a></td>
    	</tr>
    <%}
}catch(HibernateException e){
	e.printStackTrace();
}	
%>