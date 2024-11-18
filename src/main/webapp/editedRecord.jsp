<%@ include file="Navbar.jsp" %>
<html>

<body onload="changeColor('edit')">

<%
  PreparedStatement ps = (PreparedStatement)application.getAttribute("edit");
  ps.setString(1,request.getParameter("firstname"));
  ps.setString(2,request.getParameter("lastname"));
  ps.setString(3,request.getParameter("phone"));
  ps.setString(4,request.getParameter("email"));
  ps.setString(5,request.getParameter("department"));
  ps.setString(6,request.getParameter("salary"));
  ps.setString(7,request.getParameter("employeeId"));
  ps.executeUpdate();
  %>  
  <div>
  	<label style='color:red; text-align:center;'><h1>Employee record has been Updated successfully</h1></label>
  </div>

</body>

</html>