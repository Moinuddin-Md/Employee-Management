<%@page import="com.cetpa.*"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('edit')">
  <%
  EmployeeService.updateRecord(request);
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:green'>Employee has been updated successfully</label>
  </div>
 </body>
</html>