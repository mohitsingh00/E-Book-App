package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		try
		{
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			
			User us = new User();
			us.setId(id);;
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			
			HttpSession session = req.getSession();
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getCon());
			boolean f = dao.checkPassword(id, password);
			
			if(f)
			{
				boolean f2 = dao.updateUser(us);
				if(f2)
				{
					session.setAttribute("userobj", us);
					session.setAttribute("succMsg", "Profile Update Succesfully");
					resp.sendRedirect("edit_profile.jsp");
				}
				else
				{
					session.setAttribute("failedMsg", "Something went Wrong");
					resp.sendRedirect("edit_profile.jsp");
				}
			}
			else
			{
				session.setAttribute("failedMsg", "Incorrect Password");
				resp.sendRedirect("edit_profile.jsp");
			}
			resp.sendRedirect("edit_profile.jsp");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
