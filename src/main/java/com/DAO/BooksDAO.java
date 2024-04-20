package com.DAO;

import java.util.List;
import com.entity.Books;

public interface BooksDAO {

	public boolean addBooks(Books b);
	
	public List<Books> getAllBooks();
	
	public Books getBooksByID(int id);

	public boolean updateEditBooks(Books b);
	
	public boolean deleteBooks(int id);
	
	public List<Books> getNewBook();
	
	public List<Books> getRecentBook();
	
	public List<Books> getOldBook();
	
	public List<Books> getAllRecentBook();
	
	public List<Books> getAllNewBook();
	
	public List<Books> getAllOldBook();
}
