package com.village88.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("name");
		String pLanguage = request.getParameter("lang");
		String hTown = request.getParameter("town");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if(userName == null) {
			userName = "unknown";
		}
		if(pLanguage == null) {
			pLanguage = "unkown";
		}
		if(hTown == null) {
			hTown = "unkown";
		}
		out.write("<h1>Welcome " + userName + "</h1>");
		out.write("<h2> Your favorite language is: " + pLanguage + "</h2>");
		out.write("<h2>Your hometown is: " + hTown + "</h2>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
