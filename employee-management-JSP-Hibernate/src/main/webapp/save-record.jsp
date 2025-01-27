<%@page import="com.cetpa.*"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('add')">
  <%
  EmployeeService.saveRecord(request);
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:green'>Employee has been added successfully</label>
  </div>
 </body>
</html>