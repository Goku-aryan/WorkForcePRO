<html>
  <body onload="changeColor('search')">
  <%
  String eid=request.getParameter("employeeId");
  
  PreparedStatement ps = (PreparedStatement)application.getAttribute("search");
  ps.setString(1,eid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@ include file="Navbar.jsp" %>
	  <table border='1' cellpadding='6px' style='background-color:white;color:black;width:55%; margin-left:24vw;'>
	   <tr style='background-color:orange;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td><%=eid%></td>
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
	    <td><%=rst.getString(7)%></td>
	   </tr>
	  </table>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="search.jsp" />
	  <div style="text-align:center">
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> not found</label>
	  </div>
	  <%
  }
  %>  
  </body>
</html>