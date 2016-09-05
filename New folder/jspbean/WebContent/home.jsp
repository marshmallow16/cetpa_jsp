<%@page import="bean.Employee"%>
<%-- <%
Employee e=new Employee();
e.setName("lucknow");
out.println(e.getName());
% --%>

<jsp:useBean id="ob" class="bean.Employee"></jsp:useBean>     <!-- to create object -->
<jsp:setProperty property="*" name="ob"/>    

<%
boolean b=ob.insert();
if(b){
	%>
	<jsp:include page="show.jsp"></jsp:include>
	<%
}
%>