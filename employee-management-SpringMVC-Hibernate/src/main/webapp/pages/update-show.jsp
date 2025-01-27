<%@ include file="navbar.jsp" %>
<html>
  <style>
   input{
    width:100%;
   }
  </style>
  <body onload="makeActive('edit')">
   <form action='update-record' method="post">
    <table class='tar' border='1' cellpadding='5'>
	   <tr style='background-color:black;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td>${emp.eid}<input type='hidden' value='${emp.eid}' name='eid'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit first name</th>
	    <td><input type='text' name='firstname' value='${emp.firstname}'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit last name</th>
	    <td><input type='text' name='lastname' value='${emp.lastname}'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit phone number</th>
	    <td><input type='text' name='phone' value='${emp.phone}'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit email id</th>
	    <td><input type='text' name='email' value='${emp.email}'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit department</th>
	    <td><input type='text' name='department' value='${emp.department}'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit salary</th>
	    <td><input type='text' name='salary' value='${emp.salary}'></td>
	   </tr>
	   <tr>
	    <td colspan="2" align="right">
	     <button class='btn btn-primary'>Update Record</button>
	    </td>
	   </tr>
	  </table>
	</form>  
 </body>
</html>