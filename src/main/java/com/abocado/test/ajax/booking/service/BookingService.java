package com.abocado.test.ajax.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abocado.test.ajax.booking.domain.Booking;
import com.abocado.test.ajax.booking.repository.BookingRepository;

@Service
public class BookingService {
	
	@Autowired
	public BookingRepository bookingRepository;
	
	public List<Booking> getBookingList() {
		List<Booking> bookingList = bookingRepository.selectBookingList();
		return bookingList;
	}
	
}
