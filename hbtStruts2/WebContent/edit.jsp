<%@ taglib uri="/struts-tags" prefix="s" %>
<s:form action="update">
<s:iterator value="list">
<s:textfield name="id"  label="Id"></s:textfield>
<s:textfield name="name"  label="Name"></s:textfield>
<s:textfield name="address"  label="Address"></s:textfield>
<s:submit value="send"></s:submit>
</s:iterator>
</s:form>