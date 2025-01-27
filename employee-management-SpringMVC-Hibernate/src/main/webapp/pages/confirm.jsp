<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('delete')">
   <form action='delete-record'>
    <table class='tar' border='1' cellpadding='5'>
	   <tr style='background-color:red;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td>${emp.eid}<input type='hidden' value='${emp.eid}' name='eid'></td>
	   </tr>
	   <tr>
	    <th align="left">First name</th>
	    <td>${emp.firstname}</td>
	   </tr>
	   <tr>
	    <th align="left">Last name</th>
	    <td>${emp.lastname}</td>
	   </tr>
	   <tr>
	    <th align="left">Phone number</th>
	    <td>${emp.phone}</td>
	   </tr>
	   <tr>
	    <th align="left">Email id</th>
	    <td>${emp.email}</td>
	   </tr>
	   <tr>
	    <th align="left">Department</th>
	    <td>${emp.department}</td>
	   </tr>
	   <tr>
	    <th align="left">Salary</th>
	    <td>${emp.salary}</td>
	   </tr>
	   <tr>
	    <td colspan="2" align="right">
	     <button class='btn btn-secondary'>Confirm Delete</button>
	    </td>
	   </tr>
	  </table>
	</form>  
 </body>
</html>