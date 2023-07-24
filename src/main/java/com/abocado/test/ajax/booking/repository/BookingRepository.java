package com.abocado.test.ajax.booking.repository;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.abocado.test.ajax.booking.domain.Booking;

@Repository
public interface BookingRepository {

	public List<Booking> selectBookingList();
	
	public int insertBooking(
			@Param("name") String name
			, @Param("date") Date date
			, @Param("day") int day
			, @Param("phoneNumber") String phoneNumber
			, @Param("headcount") int headcount
			);
	
}
