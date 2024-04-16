package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Books;

public class BookDAOImpl implements BooksDAO {

	private Connection con;
	
	public BookDAOImpl(Connection con) {
		super();
		this.con = con;
	}



	@Override
	public boolean addBooks(Books b)
	{
		boolean f = false;
		try
		{
			String sql = "insert into books(bookName,author,price,bookCategory,status,photo,email)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i = ps.executeUpdate();
			if(i == 1)
			{
				f = true;
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
