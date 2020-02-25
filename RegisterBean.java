package com.mvc.bean;
public class RegisterBean {
 
 private String fullName;
 private String email;
 private String userName;
 private String password;
 private String country;
 
 
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getUserName() {
 return userName;
 }
 public void setUserName(String userName) {
 this.userName = userName;
 }
 public String getPassword() {
 return password;
 }
 public void setPassword(String password) {
 this.password = password;
 }
 public void setFullName(String fullName) {
 this.fullName = fullName;
 }
 public String getFullName() {
 return fullName;
 }
 public void setEmail(String email) {
 this.email = email;
 }
 public String getEmail() {
 return email;
 }
}