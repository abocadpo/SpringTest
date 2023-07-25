package com.abocado.test.ajax.booking;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abocado.test.ajax.booking.domain.Booking;
import com.abocado.test.ajax.booking.service.BookingService;

@RequestMapping("/ajax/booking")
@Controller
public class BookingController {
	
	
	@Autowired
	public BookingService bookingService;
	
	@GetMapping("/list")
	public String BookingList(Model model) {
		
		List<Booking> bookingList = bookingService.getBookingList();
		
		model.addAttribute("bookingList", bookingList);
		
		return ("/ajax/booking/list");
		
	}
	
	@GetMapping("/input")
	public String bookingInput() {
		return "ajax/booking/input";
	}
	
	@GetMapping("/main")
	public String favoriteMain() {
		return "ajax/booking/main";
	}
	
	@GetMapping("/add")
	public Map<String,String> createBooking(
			@RequestParam("name") String name
			, @RequestParam("date") Date date
			, @RequestParam("day") int day
			, @RequestParam("headcount") int headcount
			, @RequestParam("phoneNumber") String phoneNumber) {
		
		int count = bookingService.addBooking(name, date, day, headcount, phoneNumber);
		
		// 성공 {"result":"success"}
		// 실패 {"result":"fail"}
		
		Map<String, String> resultMap = new HashMap<>();
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		}
	
		@GetMapping("/delete")
		@ResponseBody
		public Map<String, String> deleteBooking(@RequestParam("id") int id) {
			
			int count = bookingService.deleteBooking(id);
			
			Map<String, String> resultMap = new HashMap<>();
			if(count == 1) {
				resultMap.put("result", "success");
			} else {
				resultMap.put("result", "fail");
			}
			return resultMap;
		}
		
		// 이름과 전화번호를 전달 받고, 일치하는 예약 정보를 json으로 response에 담는다.
		
		@GetMapping("/search")
		@ResponseBody
		public Map<String,Object> searchBooking(
				@RequestParam("name") String name
				, @RequestParam("phoneNumber") String phoneNumber) {
			
			Booking booking = bookingService.getBooking(name, phoneNumber);
			// 성공, 실패 여부
			// {"result":"success", "info": {"name":"김인규", "headcount":1, "day":2 ... }}
			// {"result":"fail"}
			Map<String, Object> resultMap = new HashMap<>();
			if(booking == null) {
				// 조회 실패
				resultMap.put("result", "fail");
			} else {
				// 조회 성공
				resultMap.put("result", "success");
				resultMap.put("info", booking);
			}
			
			return resultMap;
		}
	
}
