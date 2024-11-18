<%@include file="Navbar.jsp" %>
<html>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
    </style>

<body onload="changeColor('add')">
	<table>

    <h2>Employee Details Form</h2>
    <form action="saveRecord.jsp" method="post">
        <label>Employee ID:</label>
        <input type="number" id="employeeId" name="employeeId" required>

        <label>First Name:</label>
        <input type="text" id="firstName" name="firstName" required>

        <label>Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>

        <label>Phone Number:</label>
        <input type="number" id="phone" name="phone" required>

        <label>Email ID:</label>
        <input type="email" id="email" name="email" required>

        <label>Department:</label>
        <select id="department" name="department" required>
            <option value="" disabled selected>Select Department</option>
            <option value="HR">HR</option>
            <option value="IT">IT</option>
            <option value="Finance">Finance</option>
            <option value="Marketing">Marketing</option>
        </select>

        <label>Salary:</label>
        <input type="number" id="salary" name="salary" required>

        <button type="submit">Submit</button>
    </form>
	</table>
</body>
</html>