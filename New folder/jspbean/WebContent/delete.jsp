<%@page import="bean.Employee"%>
<%
String id=request.getParameter("id");
%>
<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean> 
<%
ob.delete(id);
%>
<jsp:include page="show.jsp"></jsp:include>