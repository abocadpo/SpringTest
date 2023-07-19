package com.abocado.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abocado.test.jstl.domain.WeatherHistory;
import com.abocado.test.jstl.service.WeatherHistoryService;

@RequestMapping("/jstl/test04")
@Controller
public class WeatherHistoryController {
	
	@Autowired
	public WeatherHistoryService weatherHistoryService;
		
	@GetMapping("/list")
	public String test04(Model model) {
		
		List<WeatherHistory> weatherHistory = weatherHistoryService.getWeatherHistory();
		
		model.addAttribute("weatherList", weatherHistory);
		
		return "jstl/test04";
	}
	
	@GetMapping("/input")
	public String weatherInput() {
		
		return "jstl/test04";
	}
	
	@GetMapping("/add")
	public String createWeather(
			// 2023년 07월 18일
//		@RequestParam("date") @DateTimeFormat(pattern="yyyy년 MM월 dd일") String date
//		, @RequestParam("weather") String weather
//		, @RequestParam("temperatures") double temperatures
//		, @RequestParam("precipitation") double precipitation
//		, @RequestParam("microDust") String microDust
//		, @RequestParam("windSpeed") double windSpeed) {
		@ModelAttribute WeatherHistory weatherHistory) {
			
			
//		int count = weatherHistoryService.addWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
		
//		int count = weatherHistoryService.addWeatherByObject(weatherHistory);
		
		return "redirect:/jstl/weatherHistory/list";
		
	}
	
}
