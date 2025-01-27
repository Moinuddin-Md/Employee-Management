<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="navbar.jsp" %>
<html>
 <body  onload="makeActive('list')">
  <div class='container mt-5'>
  	<div class='card col-md-12 mx-auto' style='border:3px solid silver'>
  	  <div class='card-body'>
  	   <div class='table scrollit'>
  	    <table class='table table-hover'>
  	     <thead>
  	      <tr>
  	      	<th>Employee id</th><th>First name</th><th>Last name</th>
  	      	<th>Phone number</th><th>Email Id</th><th>Department</th><th>Salary</th>
  	      </tr>
  	     </thead>
  	     <tbody>
  	     <c:forEach var="employee" items="${elist}">
  	       <tr>
  	        <td>${employee.eid}</td>
  	        <td>${employee.firstname}</td>
  	        <td>${employee.lastname}</td>
  	        <td>${employee.phone}</td>
  	        <td>${employee.email}</td>
  	        <td>${employee.department}</td>
  	        <td>${employee.salary}</td>
  	       </tr>
  	     </c:forEach>
  	     </tbody> 
  	    </table>
  	   </div> 	
  	  </div>
  	</div>
  </div>
 </body>
</html>