package com.abocado.test.jstl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
}
