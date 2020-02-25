package com.mvc.bean;

import java.sql.Date;
import java.sql.Time;

public class searchBean {
	private String flight_number;
	private String flight_name ;
	private String leaving_from ;
	private String going_to;
	private Date departure_date; 
	private Time departure_time;
	private int no_of_seats ;
	private float fare;
	
	public float getFare() {
		return fare;
	}
	public void setFare(float fare) {
		this.fare = fare;
	}
	public String getFlight_number() {
		return flight_number;
	}
	public void setFlight_number(String flight_number) {
		this.flight_number = flight_number;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public String getLeaving_from() {
		return leaving_from;
	}
	public void setLeaving_from(String leaving_from) {
		this.leaving_from = leaving_from;
	}
	public String getGoing_to() {
		return going_to;
	}
	public void setGoing_to(String going_to) {
		this.going_to = going_to;
	}
	public Date getDeparture_date() {
		return departure_date;
	}
	public void setDeparture_date(Date departure_date) {
		this.departure_date = departure_date;
	}
	public Time getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(Time departure_time) {
		this.departure_time = departure_time;
	}
	public int getNo_of_seats() {
		return no_of_seats;
	}
	public void setNo_of_seats(int no_of_seats) {
		this.no_of_seats = no_of_seats;
	}
	
}
