package com.abocado.test.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abocado.test.jpa.domain.Company;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Integer>{

	
	
}
