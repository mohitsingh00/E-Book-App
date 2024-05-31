package com.DAO;

import com.entity.Books;
import com.entity.Cart;

public interface CartDAO {

	public boolean addCart(Cart c);
	public Books getBookByUser();
}
