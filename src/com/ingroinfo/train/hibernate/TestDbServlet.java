package com.ingroinfo.train.hibernate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		 setup connection variable
		String user ="root";
		String pass = "root";
		String jdbcUrl="jdbc:mysql://localhost:3306/train_booking?useSSL=false";
		
		String driver ="com.mysql.jdbc.Driver";
		
		
//		get connection to databases
		
		try {
			PrintWriter out = response.getWriter();
			
			out.println("Connecting to database: "+jdbcUrl);
			Class.forName(driver);
			
			Connection mycon= DriverManager.getConnection(jdbcUrl, user, pass);
			
			out.println("Successfull !!!");
			
			mycon.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			throw new ServletException();
		}
	}

}
