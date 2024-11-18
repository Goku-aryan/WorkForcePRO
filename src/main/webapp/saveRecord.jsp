<%@ include file="Navbar.jsp"%>
<html>
	<body onload="changeColor('add')">
		<% 
		PreparedStatement ps =(PreparedStatement) application.getAttribute("save");
		ps.setString(1,request.getParameter("employeeId"));
		ps.setString(2,request.getParameter("firstName"));
		ps.setString(3,request.getParameter("lastName"));
		ps.setString(4,request.getParameter("phone"));
		ps.setString(5,request.getParameter("email"));
		ps.setString(6,request.getParameter("department"));
		ps.setString(7,request.getParameter("salary"));
		ps.executeUpdate();
		%>
		
		<div>
			<label style="text-align:center; color:red"><h1>Employee have been added Successfully.</h1></label>
		</div>
		
	</body>
</html>