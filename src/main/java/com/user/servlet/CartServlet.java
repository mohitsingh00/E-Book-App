package com.user.servlet;

import java.io.IOException;
import com.DAO.BooksDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.Books;
import com.entity.Cart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try
		{
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			BooksDAOImpl dao = new BooksDAOImpl(DBConnect.getCon());
			Books b = dao.getBooksByID(bid);
			
			Cart c = new Cart();
			c.setBid(bid);
			c.setUserId(uid);
			c.setBookName(b.getBookName());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getCon());
			boolean f = dao2.addCart(c);
			if(f)
			{
				System.out.println("Add Cart Success");
			}
			else
			{
				System.out.println("Not Added to Cart");
			}
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
