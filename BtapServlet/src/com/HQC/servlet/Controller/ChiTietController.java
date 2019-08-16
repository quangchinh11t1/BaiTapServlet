package com.HQC.servlet.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HQC.servlet.DAO.UserDAO;
import com.HQC.servlet.Entity.User;

/**
 * Servlet implementation class ChiTietController
 */
@WebServlet("/ChiTiet")
public class ChiTietController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		
		UserDAO userDao = new UserDAO();
		User use = userDao.CheckUser(userName, passWord);
		
		request.setAttribute("firstName", use.getFirstName());
		request.setAttribute("lastName", use.getLastName());
		request.setAttribute("age", use.getAge());
		request.setAttribute("avatar", use.getAvatar());
		request.setAttribute("memo", use.getMemo());
		request.setAttribute("alone", use.getAlone());
		
		RequestDispatcher dis = request.getRequestDispatcher("ChiTiet.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		
		UserDAO userDao = new UserDAO();
		User use = userDao.CheckUser(userName, passWord);
		
		request.setAttribute("firstName", use.getFirstName());
		request.setAttribute("lastName", use.getLastName());
		request.setAttribute("age", use.getAge());
		request.setAttribute("avatar", use.getAvatar());
		request.setAttribute("memo", use.getMemo());
		request.setAttribute("alone", use.getAlone());
		
		RequestDispatcher dis = request.getRequestDispatcher("ChiTiet.jsp");
		dis.forward(request, response);
	}

}
