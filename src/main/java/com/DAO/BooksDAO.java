package com.DAO;

import java.util.List;
import com.entity.Books;

public interface BooksDAO {

	public boolean addBooks(Books b);
	
	public List<Books> getAllBooks();
}
