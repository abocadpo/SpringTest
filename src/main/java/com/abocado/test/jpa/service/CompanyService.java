package com.abocado.test.jpa.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abocado.test.jpa.CompanyRepository;
import com.abocado.test.jpa.domain.Company;

@Service
public class CompanyService {
	
	@Autowired
	private CompanyRepository companyRepository;
	
	public Company addCompany(String name, String business, String scale, int headcount) {
		
		Company company = Company.builder()
			.name(name)
			.business(business)
			.headcount(headcount)
			.scale(scale)
			.build();
		
		company = companyRepository.save(company);
		
		return company;
			
	}
	
	public Company updateCompanyScale(int id, String scale) {
		Optional<Company> optionalCompany = companyRepository.findById(id);
		
		Company company = optionalCompany.orElse(null);
		
		if(company != null) {
			company = company.toBuilder()
			.scale(scale)
			.build();
			
			company = companyRepository.save(company);
					
		}
		
		return company;
		
	}
	
	public Company updateCompanyHeadcount(int id, int headcount) {
		Optional<Company> optionalCompany = companyRepository.findById(id);
		
		Company company = optionalCompany.orElse(null);
		
		if(company != null) {
			company = company.toBuilder()
			.headcount(headcount)
			.build();
			
			company = companyRepository.save(company);
					
		}
		
		return company;
		
	}
	
	
	
}
