<%@page import="com.cetpa.EmployeeService"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('delete')">
  <%
  EmployeeService.deleteRecord(request.getParameter("eid"));
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:red'>Employee record has been deleted successfully</label>
  </div>
 </body>
</html>