package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.entity.BookOrder;

public class BookOrderImpl implements BookOrderDAO {

	private Connection con;
	
	public BookOrderImpl(Connection con) {
		super();
		this.con = con;
	}

	@Override
	public boolean saveOrder(List<BookOrder> blist)
	{
		boolean f = false;
		try
		{
			String sql = "insert into book_order(order_id,username,email,address,phone,book_name,author,price,payment) values(?,?,?,?,?,?,?,?,?)";
			con.setAutoCommit(false);
			PreparedStatement ps = con.prepareStatement(sql);
			for(BookOrder b:blist)
			{
				ps.setString(1, b.getOrderId());
				ps.setString(2, b.getUsername());
				ps.setString(3, b.getEmail());
				ps.setString(4, b.getFullAddress());
				ps.setString(5, b.getPhno());
				ps.setString(6, b.getBookName());
				ps.setString(7, b.getAuthor());
				ps.setString(8, b.getPrice());
				ps.setString(9, b.getPaymentType());
				ps.addBatch();
			}
			int[] count = ps.executeBatch();
			con.commit();
			f = true;
			con.setAutoCommit(true);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}
}