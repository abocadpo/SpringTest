package com.abocado.test.jstl.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.abocado.test.jstl.domain.WeatherHistory;

@Repository
public interface WeatherHistoryRepository {
	
	public List<WeatherHistory> selectWeatherHistory();	
	
	public int insertWeather(
			@Param("date") String date
			, @Param("weather") String weather
			, @Param("temperatures") double temperatures
			, @Param("precipitation") double precipitation
			, @Param("microDust") String microDust
			, @Param("windSpeed") double windSpeed);
	
	public int insertWeatherByObject(WeatherHistory weatherHistory);
	
}
