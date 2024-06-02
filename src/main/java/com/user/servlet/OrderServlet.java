package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.DAO.BookOrderImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookOrder;
import com.entity.Cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/orderServlet")
public class OrderServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try
		{
			HttpSession session = req.getSession();
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("username");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String paymentType = req.getParameter("paymentType");
			
			String fullAddress = address+", "+landmark+", "+city+", "+state+", "+pincode;
			
			CartDAOImpl dao = new CartDAOImpl(DBConnect.getCon());
			
			List<Cart> blist = dao.getBookByUser(id);
			BookOrderImpl dao2 = new BookOrderImpl(DBConnect.getCon());
			
			BookOrder o = null;
			ArrayList<BookOrder> orderList = new ArrayList<>();
			Random ran = new Random();
			for(Cart c : blist)
			{
				o = new BookOrder();
				o.setOrderId("BOOK-ORD-"+ran.nextInt(1000));
				o.setUsername(name);
				o.setEmail(email);
				o.setPhno(phno);
				o.setFullAddress(fullAddress);
				o.setBookName(c.getBookName());
				o.setAuthor(c.getAuthor());
				o.setPrice(c.getPrice()+"");
				o.setPaymentType(paymentType);
				orderList.add(o);
			}
			
			if("noselect".equals(paymentType))
			{
				session.setAttribute("failedMsg", "Select Payment Option");
				resp.sendRedirect("checkout.jsp");
			}
			else
			{
				boolean f = dao2.saveOrder(orderList);
				if(f)
				{
					resp.sendRedirect("order_success.jsp");;
				}
				else
				{
					session.setAttribute("failedMsg", "Your Order Failed");
					resp.sendRedirect("checkout.jsp");
				}
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
