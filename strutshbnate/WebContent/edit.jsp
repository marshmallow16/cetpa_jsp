<%@ taglib uri="/struts-tags" prefix="s" %> <!-- jstl direct html not used layer made-->

<s:form action="update">
<s:iterator value="list">
<s:textfield name="id" label="id"></s:textfield>
<s:textfield name="name" label="name"></s:textfield> <!-- label=display tag -->
<s:textfield name="password" label="password" ></s:textfield>
</s:iterator>
<s:submit type="submit" value="submit"></s:submit>
</s:form>
</body>
</html>
