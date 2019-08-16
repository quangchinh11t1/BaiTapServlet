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
 * Servlet implementation class DangKyController
 */
@WebServlet("/DangKy")
public class DangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DangKyController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {				
		RequestDispatcher dis = request.getRequestDispatcher("DangKy.jsp");
		dis.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String check = String.valueOf(request.getParameter("userName"));
		
		 if(!check.equals("null")) { 
			 String userName = request.getParameter("userName"); 
			 String passWord =request.getParameter("passWord"); 
			 String firstName = request.getParameter("firstName"); 
			 String lastName = request.getParameter("lastName"); 
			 int age =Integer.parseInt(request.getParameter("age")); 
			 String avatar = request.getParameter("avatar");
			 String memo = request.getParameter("memo");
			 String alone = request.getParameter("alone"); 
			 if (alone.equals("on")) {
				 alone= "checked"; 
			 } 
			 User user = new User(); 
			 
			 user.setUserName(userName);
			 user.setPassWord(passWord); 
			 user.setFirstName(firstName);
			 user.setLastName(lastName); 
			 user.setAge(age); 
			 user.setAvatar(avatar);
			 user.setMemo(memo); 
			 user.setAlone(alone);
			
			 UserDAO userDao = new UserDAO(); 
			 userDao.InsertUser(user);
		  
		
		  }
		RequestDispatcher dis = request.getRequestDispatcher("DangNhap.jsp");
		dis.forward(request, response);
		
	}

}
