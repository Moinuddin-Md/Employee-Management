<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('delete')">
   <form action="confirm-delete">
    <table class='ta' style='background-color:red;color:white'>
     <tr>
      <td class='pad'><label>Enter employee id</label></td>
      <td class='pad'>
      	<input type="number" value='${eid}' name="eid" required>
      </td>
      <td class='pad'>
       <button class='btn btn-secondary'>Delete Record</button>
      </td>
     </tr>
    </table>
   </form>
   <div class='dvv'>
    <label style='color:red;font-size:1.7vw'>${msg}</label>
   </div>
  </body>
</html>