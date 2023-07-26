package com.abocado.test.jpa;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abocado.test.jpa.domain.Company;
import com.abocado.test.jpa.service.CompanyService;

@RequestMapping("/jpa/company")
@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@ResponseBody
	@GetMapping("/create")
	public List<Company> createCompany() {
		
//		String name = "넥슨";
//		String business = "컨텐츠 게임";
//		String scale = "대기업";
//		int headcount = 3585;
//		
		List<Company> companyList = new ArrayList<>();
		
		Company company = companyService.addCompany("넥슨", "컨텐츠 게임", "대기업", 3585);
		companyList.add(company);
		
		company = companyService.addCompany("버블팡", "여신 금융업", "대기업", 6834);
		companyList.add(company);
		
		return companyList;
	}
	
	
	
	@ResponseBody
	@GetMapping("/update")
	public Company updateCompany() {
		
		Company company = companyService.updateCompanyScale(8, "중소기업");
		company = companyService.updateCompanyHeadcount(8, 34);
		
		return company;
	}
	
	
}
