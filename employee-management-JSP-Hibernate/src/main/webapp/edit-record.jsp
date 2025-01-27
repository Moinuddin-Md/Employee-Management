<%@page import="com.cetpa.*"%>
<html>
  <body onload="makeActive('edit')">
  <%
  String eid=request.getParameter("eid");
  Employee emp=EmployeeService.getRecord(eid); 
  if(emp!=null)
  {
	  %>
	  <%@ include file="navbar.jsp" %>
  <div class='container'>
  	<div class='card col-md-10 mx-auto'>
  	 <div class='card-body'>
  	  <form action="update-record.jsp" method="post">
  	   <div class='row'>
  	    <div class='form-group col-md-10'>
  	      <label>Enter employee id</label><span> *</span>
  	      <input type="number" value='<%=eid%>' class='form-control' name='eid' readonly="readonly"> 
  	    </div>
  	   </div>
  	   <div class='row'>
  	    <div class='form-group col-md-5'>
  	      <label>Edit first name</label><span> *</span>
  	      <input type="text" value='<%=emp.getFirstname()%>' class='form-control' name='firstname' required>
  	    </div>
  	    <div class='form-group col-md-5'>
  	      <label>Edit last name</label><span> *</span>
  	      <input type="text" value='<%=emp.getLastname()%>' class='form-control' name='lastname' required>
  	    </div>
  	   </div>
  	   <div class='row'>
  	    <div class='form-group col-md-5'>
  	      <label>Edit phone number</label><span> *</span>
  	      <input type="number" value='<%=emp.getPhone()%>' class='form-control' name='phone' required>
  	    </div>
  	    <div class='form-group col-md-5'>
  	      <label>Edit email id</label><span> *</span>
  	      <input type="email" value='<%=emp.getEmailid()%>'  class='form-control' name='email' required>
  	    </div>
  	   </div>
  	   <div class='row'>
  	    <div class='form-group col-md-5'>
  	      <label for="department">Edit department</label><span> *</span>
  	      <input type="text" value='<%=emp.getDepartment()%>'  class='form-control' name='department' required>
  	    </div>
  	    <div class='form-group col-md-5'>
  	      <label>Edit salary</label><span> *</span>
  	      <input type="number" value='<%=emp.getSalary()%>'  class='form-control' name='salary' required>
  	    </div>
  	   </div>
  	   <div class='row'>
  	    <div class='form-group col-md-10'>
  	     <button class='btn btn-primary'>Update Record</button>
  	    </div>
  	   </div>
  	  </form>
  	 </div>
  	</div>
  </div>
  <%}
  else
  {
	  %>
	  <jsp:include page="edit.jsp" />
	  <div class='dvv'>
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> does not exist</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>