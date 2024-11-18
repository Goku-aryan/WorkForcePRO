<html>
  <body onload="changeColor('edit')">
  
  
  <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .form-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 500px;
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            transition: border 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="email"]:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        span {
            color: red;
        }
    </style>
  
  
  <%
  String eid=request.getParameter("employeeId");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/employeeManagement","root","mysql");
  PreparedStatement ps=cn.prepareStatement("select * from employeeinfo where eid=?");
  ps.setString(1,eid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@ include file="Navbar.jsp" %>
  <div>
  	<div>
  	 <div class="form-container">
  	  <form action="editedRecord.jsp" method="post">
  	   <div>
  	    <div class="form-group">
  	      <label>Enter employee id</label><span> *</span>
  	      <input type="number" value='<%=rst.getString(1)%>' name='employeeId' readonly="readonly"> 
  	    </div>
  	   </div>
  	   <div>
  	    <div class="form-group">
  	      <label>Edit first name</label><span> *</span>
  	      <input type="text" value='<%=rst.getString(2)%>' name='firstname' required>
  	    </div>
  	    <div class="form-group">
  	      <label>Edit last name</label><span> *</span>
  	      <input type="text" value='<%=rst.getString(3)%>' name='lastname' required>
  	    </div>
  	   </div>
  	   <div>
  	    <div class="form-group">
  	      <label>Edit phone number</label><span> *</span>
  	      <input type="number" value='<%=rst.getString(4)%>' name='phone' required>
  	    </div>
  	    <div class="form-group">
  	      <label>Edit email id</label><span> *</span>
  	      <input type="email" value='<%=rst.getString(5)%>'  name='email' required>
  	    </div>
  	   </div>
  	   <div>
  	    <div class="form-group">
  	      <label for="department">Edit department</label><span> *</span>
  	      <input type="text" value='<%=rst.getString(6)%>'  name='department' required>
  	    </div>
  	    <div class="form-group">
  	      <label>Edit salary</label><span> *</span>
  	      <input type="number" value='<%=rst.getString(7)%>'  name='salary' required>
  	    </div>
  	   </div>
  	   <div>
  	    <div class="form-group">
  	     <button>Update Record</button>
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
	  <div>
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> does not exist</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>