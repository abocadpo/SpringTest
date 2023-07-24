package com.abocado.test.ajax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abocado.test.ajax.domain.Favorite;
import com.abocado.test.ajax.repository.FavoriteRepository;

@Service
public class FavoriteService {
	
	@Autowired
	public FavoriteRepository favoriteRepository;
	
	public List<Favorite> getFavoriteList() {
		List<Favorite> favoriteList = favoriteRepository.selectFavoriteList();
		return favoriteList;
	}
	
	public int addFavorite(
			String name
			, String address
			) {
		int count = favoriteRepository.insertFavorite(name, address);
		return count;
	}
	
	
//	public int deleteFavorite(int id) {
//		int count = favoriteRepository.deleteFavorite(id);
//		return count;
//	}
	
}
