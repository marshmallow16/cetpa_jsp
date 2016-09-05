<%@ taglib uri="/struts-tags" prefix="s" %>
<table >
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Password</th>
    <th colspan="2">Action</th>
  </tr>
  <s:iterator value="list">
  <tr>
  
    <td bordercolor="pink"> <s:property value="id"/> </td>
    <td bordercolor="pink"> <s:property value="name"/></td>
    <td bordercolor="pink"><s:property value="password"/></td>
    <td><a href='delete?id=<s:property value="id"/>'>Delete</a>
    <a href='edit?id=<s:property value="id"/>'>Edit</a></td>
  </tr>
  </s:iterator>
</table>


