package com.abocado.test.database.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.abocado.test.database.domain.Store;

@Repository
public interface StoreRepository {
	
	// store 모든 행 중 조회
	public List<Store> selectStoreList();

	
	
	
}
