package com.abocado.test.ajax.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.abocado.test.ajax.domain.Favorite;

@Repository
public interface FavoriteRepository {
	
	public List<Favorite> selectFavoriteList();
	
	public int insertFavorite(
			@Param("name") String name
			, @Param("address") String address			
			);
	
	public int selectCountUrl(@Param("url") String url);
	
	public int deleteFavorite(@Param("id") int id);
	
	
	
}
