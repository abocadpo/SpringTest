package com.abocado.test.jsp.repository;

import org.springframework.stereotype.Repository;

import com.abocado.test.jsp.domain.Realtor;

@Repository
public interface RealtorRepository {
	
	public int insertRealtor(Realtor realtor);
	
}
