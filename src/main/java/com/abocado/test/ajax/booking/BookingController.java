package com.abocado.test.ajax.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
