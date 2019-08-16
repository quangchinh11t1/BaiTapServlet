package com.HQC.servlet.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TrangChuController
 */
@WebServlet("/TrangChu")
public class TrangChuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TrangChuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dis = request.getRequestDispatcher("TrangChu.jsp");
		dis.forward(request, response);
	}

}
