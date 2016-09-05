<%@page import="bean.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="bean.Employee" %>

<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean>	
<jsp:setProperty property="*" name="ob"/>
<%
SessionFactory fact= HibernateUtil.getSessionFactory();
		Session s= fact.openSession();
		org.hibernate.Transaction transaction=null;
		try {
			transaction= s.beginTransaction();
		    s.save(ob);
		    transaction.commit();%>
		    <!-- System.out.println("successfully"); -->
		    <jsp:forward page="show.jsp"></jsp:forward>
		<%}
		catch(HibernateException e)
		{
			e.printStackTrace();
		}
%>