package com.techdasher.model;

public class User {
	private String name;
	private String gender;
	private String country;
	private String biodata;
	private String countryVisited[];
	
	
	public User() { 
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	} 
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getBiodata() {
		return biodata;
	}
	public void setBiodata(String biodata) {
		this.biodata = biodata;
	}
	public String[] getCountryVisited() {
		return countryVisited;
	}
	public void setCountryVisited(String[] countryVisited) {
		this.countryVisited = countryVisited;
	}
	
}
