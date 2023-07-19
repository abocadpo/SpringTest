package com.abocado.test.jstl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abocado.test.jstl.domain.WeatherHistory;
import com.abocado.test.jstl.repository.WeatherHistoryRepository;

@Service
public class WeatherHistoryService {

	@Autowired
	public WeatherHistoryRepository weatherHistoryRepository;

	// 모든 날씨 정보를 조회한다.
	public List<WeatherHistory> getWeatherHistory(){
		List<WeatherHistory> weatherHistory = weatherHistoryRepository.selectWeatherHistory();

		return weatherHistory; 
	}
	
	public int addWeather(
		String date
		, String weather
		, double temperatures
		, double precipitation
		, String microDust
		, double windSpeed) {
		
	int count = weatherHistoryRepository.insertWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
	return count;	
	}
	
//	public int addWeatherByObject(WeatherHistory weatherHistory) {
//		int count = 
//				return count;
	

}
