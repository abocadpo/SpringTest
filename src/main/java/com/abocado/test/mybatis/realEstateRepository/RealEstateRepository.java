package com.abocado.test.mybatis.realEstateRepository;

import org.springframework.stereotype.Repository;

import com.abocado.test.mybatis.domain.RealEstate;

@Repository
public interface RealEstateRepository {
	
	public RealEstate selectRealEstate();
	
}
