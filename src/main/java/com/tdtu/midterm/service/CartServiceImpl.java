package com.tdtu.midterm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tdtu.midterm.entity.Cart;
import com.tdtu.midterm.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartRepository cartRepository;

	@Override
	public void addCart(Cart cart) {
		cartRepository.save(cart);
	}

	@Override
	public List<Cart> getCarts(String user) {
		return cartRepository.findByUser(user);
	}

	@Override
	public void removeCart(String user, int product) {
		cartRepository.removeCart(product, user);
	}

	@Override
	public int getTotal(String user) {
		Integer total = cartRepository.getTotal(user);
		return (total == null) ? 0 : total;
	}
}
