<%@page import="org.hibernate.HibernateException"%>
<%@page import="bean.HibernateUtil"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="bean.Employee" %>
<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="ob"/>


<%
boolean b=false;
long id=Long.parseLong(request.getParameter("id"));
String name=request.getParameter("name");
String address=request.getParameter("address");
SessionFactory fact= HibernateUtil.getSessionFactory();
Session ss= fact.openSession();
org.hibernate.Transaction transaction=null;
try {
	transaction= ss.beginTransaction();
    Employee e1= (Employee)ss.get(Employee.class, id);
    e1.setName(name);
    e1.setAddress(address);
    ss.update(e1);
    transaction.commit();
    b=true;
}catch(Exception e){
	e.printStackTrace();
}
if(b){%>
<jsp:include page="show.jsp"></jsp:include>
<%}
%>