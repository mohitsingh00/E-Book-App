package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Books;

public class BooksDAOImpl implements BooksDAO {

	private Connection con;
	
	public BooksDAOImpl(Connection con) {
		super();
		this.con = con;
	}



	@Override
	public boolean addBooks(Books b)
	{
		boolean f = false;
		try
		{
			String sql = "insert into books(bookName,author,price,bookCategory,status,photo,email) Values(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i = ps.executeUpdate();
			if(i > 0)
			{
				f = true;
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}

}
