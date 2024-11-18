<html>
  <body onload="changeColor('delete')">
  <%
  String eid=request.getParameter("employeeId");
  
  PreparedStatement ps = (PreparedStatement)application.getAttribute("delete");
  ps.setString(1,eid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@ include file="Navbar.jsp" %>
	  <form action="deleteRecord.jsp" style=" display: flex; justify-content: center;">
	  <table border='1' style="background-color:skyblue;color:black;width:75%;" cellpadding='6px'>
	   <tr style='background-color:orange;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td><%=eid%><input type="hidden" name="employeeId" value="<%=eid%>"></td>
	   </tr>
	   <tr>
	    <th align="left">First name</th>
	    <td><%=rst.getString(2)%></td>
	   </tr>
	   <tr>
	    <th align="left">Last name</th>
	    <td><%=rst.getString(3)%></td>
	   </tr>
	   <tr>
	    <th align="left">Phone number</th>
	    <td><%=rst.getString(4)%></td>
	   </tr>
	   <tr>
	    <th align="left">Email id</th>
	    <td><%=rst.getString(5)%></td>
	   </tr>
	   <tr>
	    <th align="left">Department</th>
	    <td><%=rst.getString(6)%></td>
	   </tr>
	   <tr>
	    <th align="left">Salary</th>
	    <td>&#8377;<%=rst.getString(7)%></td>
	   </tr>
	   <tr>
	    <td colspan="2" align="right">
	     <button>Confirm Delete</button>
	    </td>
	   </tr>
	  </table>
	  </form>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="delete.jsp" />
	  <div style="text-align:center">
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> does not exist</label>
	  </div>
	  <%
  }
  %>  
  
 </body>
</html>