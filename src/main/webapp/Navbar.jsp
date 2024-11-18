<%@page import="java.sql.*" %>
<html>
    <script src='js/changeColor.js'></script>
    <style>
    a{
      transition: all 0.3s ease;
    }
    a:hover{
      transform: scale(1.5);
    }
    </style>
<body>
    <div style="height: 10vw; width: 90vw; margin: auto; margin-top: 2vw; background-color: aliceblue; text-align: center; ">

            <h1 style="display: inline-block; margin: 0 15px; margin-top: 50px;">WorkForcePRO</h1>
            <a href="home.jsp" style="display: inline-block; margin: 0 15px; font-size: large;" id="home">Home</a>
            <a href="addEmployee.jsp" style="display: inline-block; margin: 0 15px; font-size: large;" id="add">Add</a>
            <a href="list.jsp" style="display: inline-block; margin: 0 15px; font-size: large;" id="list">List</a>
            <a href="delete.jsp" style="display: inline-block; margin: 0 15px; font-size: large;" id="delete">Delete</a>
            <a href="edit.jsp" style="display: inline-block; margin: 0 15px; font-size: large;" id="edit">Edit</a>
            <a href="search.jsp" style="display: inline-block; margin: 0 15px; font-size: large;" id="search">Search</a>

    </div>
</body>
</html>