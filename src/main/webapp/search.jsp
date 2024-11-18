<%@ include file="Navbar.jsp" %>
<html>

<style>
form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 700px;
            margin: 25px auto;
            display: flex;
            align-iems:center;
            gap: 15px; 
        }

        label {
            font-weight: bold;
          margin-left:4vw;
        }

        input{
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
          margin-left:2vw;
           
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

  <body onload="changeColor('search')">
   <div>
        <form action="searchRecord.jsp">
            <table>
             <tr>
              <td><label>Enter employee id :</label></td>
              <td>
                  <input type="number" id="employeeId" name="employeeId" required>
              </td>
              <td>
               <button>Search Record</button>
              </td>
             </tr>
            </table>
           </form>

           <img style="width: 300px; margin-left: 600px;" src="https://img.icons8.com/?size=512&id=12773&format=png" alt="">

        </div>
  </body>
</html>