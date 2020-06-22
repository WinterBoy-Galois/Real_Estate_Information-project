package com.ssafy.hh.google.dto;

public class LocationDto {
	private String dong;
	private String aptName;
	private String lat;
	private String lng;
	public LocationDto(String dong, String aptName, String lat, String lng) {
		super();
		this.dong = dong;
		this.aptName = aptName;
		this.lat = lat;
		this.lng = lng;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getAptName() {
		return aptName;
	}
	public void setAptName(String aptName) {
		this.aptName = aptName;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	
	
}
