<%@ include file="Navbar.jsp"%>
<html>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007bff;
        color: white;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    td {
        background-color: #ffffff;
    }

    /* Responsive Design */
    @media (max-width: 600px) {
        th, td {
            padding: 10px;
        }
    }
</style>


<body onload="changeColor('list')">

<table>
  	     <thead>
  	      <tr>
  	      	<th>Employee id</th><th>First name</th><th>Last name</th>
  	      	<th>Phone number</th><th>Email Id</th><th>Department</th><th>Salary</th>
  	      </tr>
  	     </thead>
  	     <tbody>
  	     <%
  	  	 Class.forName("com.mysql.cj.jdbc.Driver");
  	   	 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/employeeManagement","root","mysql");
  	     Statement st=cn.createStatement();
  	     ResultSet rst=st.executeQuery("select * from employeeinfo");
  	     while(rst.next())
  	     {
  	    	 %>
  	    	 <tr>
  	    	  <td><%=rst.getString(1)%></td>
  	    	  <td><%=rst.getString(2)%></td>
  	    	  <td><%=rst.getString(3)%></td>
  	    	  <td><%=rst.getString(4)%></td>
  	    	  <td><%=rst.getString(5)%></td>
  	    	  <td><%=rst.getString(6)%></td>
  	    	  <td><%=rst.getString(7)%></td>
  	    	 </tr>
  	    	 <%
  	     }
  	     %>
  	     </tbody> 
  	    </table>

</body>
</html>