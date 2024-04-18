package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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

	@Override
	public List<Books> getAllBooks() 
	{
		List<Books> list = new ArrayList<Books>();
		Books b = null;
		try
		{
			String sql = "select * from books";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				b = new Books();
				b.setBookID(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Books getBooksByID(int id)
	{
		Books b = null;
		try
		{
			String sql = "select * from books where bookId = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				b = new Books();
				b.setBookID(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}

	@Override
	public boolean updateEditBooks(Books b) 
	{
		boolean f = false;
		try
		{
			String sql = "update books set bookname=?,author=?,price=?,status=? where bookId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookID());
			
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
		return f;
	}

	
	@Override
	public boolean deleteBooks(int id) 
	{
		boolean f = false;
		try
		{
			String sql = "delete from books where bookId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
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
		return f;
	}

	@Override
	public List<Books> getNewBook()
	{
		List<Books> list = new ArrayList<>();
		Books b = null;
		try
		{
			String sql = "Select * from books where bookCategory=? and status=? order by bookID DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while(rs.next() && i <= 4)
			{
				b = new Books();
				b.setBookID(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<Books> getRecentBook() 
	{
		List<Books> list = new ArrayList<>();
		Books b = null;
		try
		{
			String sql = "Select * from books where status=? order by bookID DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while(rs.next() && i <= 4)
			{
				b = new Books();
				b.setBookID(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<Books> getOldBook()
	{
		List<Books> list = new ArrayList<>();
		Books b = null;
		try
		{
			String sql = "Select * from books where bookCategory=? and status=? order by bookID DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "Old");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while(rs.next() && i <= 4)
			{
				b = new Books();
				b.setBookID(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}
}
