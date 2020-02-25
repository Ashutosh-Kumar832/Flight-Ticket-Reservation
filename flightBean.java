package com.mvc.bean;

import java.util.Date;

public class flightBean {
private String flight_number;
private String flight_Franchise ;
private String from_location;
private String to_location;
private String start_time;
private String end_time;
private String fare;


public String getFlight_number() {
	return flight_number;
}
public void setFlight_number(String flight_number) {
	this.flight_number = flight_number;
}
public String getFlight_Franchise() {
	return flight_Franchise;
}
public void setFlight_Franchise(String flight_Franchise) {
	this.flight_Franchise = flight_Franchise;
}
public String getFrom_location() {
	return from_location;
}
public void setFrom_location(String from_location) {
	this.from_location = from_location;
}
public String getTo_location() {
	return to_location;
}
public void setTo_location(String to_location) {
	this.to_location = to_location;
}
public String getStart_time() {
	return start_time;
}
public void setStart_time(String start_time) {
	this.start_time = start_time;
}
public String getEnd_time() {
	return end_time;
}
public void setEnd_time(String end_time) {
	this.end_time = end_time;
}
public String getFare() {
	return fare;
}
public void setFare(String fare) {
	this.fare = fare;
}
}