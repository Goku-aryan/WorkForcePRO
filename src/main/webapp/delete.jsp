<%@ include file="Navbar.jsp"%>
<html>
<style>
form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 20px auto;
            display: flex;
            flex-direction: column;
            gap: 15px; 
        }

        label {
            font-weight: bold;
          margin-left:6vw;
        }

        input{
            width: 60%%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            margin-top:2vw;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            margin-left:3vw;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>

<body onload = "changeColor('delete')">

	<div>
        
            <form action="confirmDelete.jsp">
            <div>
                <label style="">Enter the Employee Id : </label>
                <input type="number" id="employeeId" name="employeeId" required>
                <button>Delete Record</button>
                
            </div>
            </form>

            <img style="width: 300px; margin-left: 600px;" src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-delete-button-3d-icon-png-image_6217492.png" alt="">

        </div>
	
	
</body>
</html>