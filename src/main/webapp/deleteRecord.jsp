<%@ include file="Navbar.jsp" %>
<html>
<body onload = "changeColor('delete')">
<%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/employeeManagement","root","mysql");
  PreparedStatement ps=cn.prepareStatement("delete from employeeinfo where eid=?");
  ps.setString(1,request.getParameter("employeeId"));
  ps.executeUpdate();
  %>  
  <div>
  	<label style='color:red; text-align:center;'><h1>Employee record has been deleted successfully</h1></label>
  </div>

</body>
</html>