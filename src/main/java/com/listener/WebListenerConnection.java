package com.listener;

import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class WebListenerConnection implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent evt)
{
		ServletContext context = evt.getServletContext();
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3307/employeeManagement","root","mysql");
			PreparedStatement pssave = cn.prepareStatement("insert into employeeInfo values(?,?,?,?,?,?,?)");
			context.setAttribute("save",pssave);
			PreparedStatement psdelete=cn.prepareStatement("select * from employeeinfo where eid=?");
			context.setAttribute("delete", psdelete);
			PreparedStatement psedit=cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,phone=?,emailid=?,department=?,salary=? where eid=?");
			context.setAttribute("edit", psedit);
			PreparedStatement pssearch=cn.prepareStatement("select * from employeeinfo where eid=?");
			context.setAttribute("search", pssearch);
			
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
}
}
