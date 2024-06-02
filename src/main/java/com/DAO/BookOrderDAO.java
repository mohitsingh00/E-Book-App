package com.DAO;

import java.util.List;
import com.entity.BookOrder;

interface BookOrderDAO {
	
	public boolean saveOrder(List<BookOrder> blist);
	public List<BookOrder> getBook(String email);
	public List<BookOrder> getBook();
}
