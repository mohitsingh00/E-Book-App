package com.user.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.BooksDAOImpl;
import com.DB.DBConnect;
import com.entity.Books;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = (req.getParameter("price"));
			String category = "Old";
			String status = "Active";
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			String useremail = req.getParameter("user");
			Books b = new Books(bookName, author, price, category, status, fileName, useremail);
			BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());

			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();
			if (f) 
			{
				String path = getServletContext().getRealPath("") + "books";
				File file = new File(path);
				part.write(path + File.separator + fileName);
				session.setAttribute("succMsg", "Book Add Successfully");
				resp.sendRedirect("sell_book.jsp");
			} 
			else 
			{
				session.setAttribute("failedMsg", "Something went wrong");
				resp.sendRedirect("sell_book.jsp");
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
