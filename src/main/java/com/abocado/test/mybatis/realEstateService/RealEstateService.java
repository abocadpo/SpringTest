package com.abocado.test.mybatis.realEstateService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abocado.test.mybatis.domain.RealEstate;
import com.abocado.test.mybatis.realEstateRepository.RealEstateRepository;

@Service
public class RealEstateService {
	
	@Autowired
	private RealEstateRepository realEstateRepository;
	
	// 전달된 id와 일치하는 매물 정보 얻기
	public RealEstate getRealEstate(int id) {
		
		RealEstate realEstate = realEstateRepository.selectRealEstate(id);
		
		return realEstate;
	}
	

	// 전달된 월세보다 낮은 매물 정보 얻기
	public List<RealEstate> getRealEstateByRentPrice(int rentPrice) {
		List<RealEstate> realEstateList = realEstateRepository.selectRealEstateByRentPrice(rentPrice);
		
		return realEstateList;
	}
	
	// 면적과 가격 전달 받고, 해당ㅇ하는 매물 정보 얻기
	public List<RealEstate> getRealEstateByAreaPrice(int area, int price) {
		List<RealEstate> realEstateList = realEstateRepository.selectRealEstateByAreaPrice(area, price);
		
		return realEstateList; 
	}
	
	// 전달 받고 저장
	public int addRealEstate(
			int realtorId
			, String address
			, int area
			, String type
			, int price) {
		
		int count = realEstateRepository.insertRealEstate(realtorId, address, area, type, price);
		
		return count;
	}
	
	
	
	
	

}