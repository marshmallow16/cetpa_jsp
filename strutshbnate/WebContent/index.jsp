<%@ taglib uri="/struts-tags" prefix="s" %> <!-- jstl direct html not used layer made-->
<%@ taglib uri="/struts-dojo-tags" prefix="d"%>


<s:form action="login">
<s:textfield name="name" label="name"></s:textfield> <!-- label=display tag -->
<s:textfield name="password" label="password"></s:textfield>
<d:submit type="true" value="Register"></d:submit>

</s:form>
