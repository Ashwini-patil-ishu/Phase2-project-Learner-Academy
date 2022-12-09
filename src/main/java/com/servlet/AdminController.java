package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminController
 */
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username=request.getParameter("username");
	    String Password=request.getParameter("password");
	    PrintWriter pw= response.getWriter();
	    
	    
	    if(Username.equals(Password))
	    {
	    	 
	
	    	response.setContentType("text/html");
	    	RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
	    	rd.include(request, response);
	    	}
	    else
	    {
	    
	    	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    	rd.include(request, response);
	    }
	}

}
