<%@page import="bean.Employee" %>
<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean> 
<jsp:setProperty property="*" name="ob"/>

<%
String id=request.getParameter("id");
boolean s=ob.update(id);
if(s)
{
%>
<jsp:include page="show.jsp"></jsp:include>
<%
}
%>