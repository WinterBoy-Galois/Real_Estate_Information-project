package com.ssafy.hh.house.dto;

public class HouseInfoDto {
	private int no;
	private String dong;
	private String aptName;
	private String dealAmount;
	private String code;
	private String buildYear;
	private String jibun;
	private String lat;
	private String lng;
	private String img;
	
	
	public String getDealAmount() {
		return dealAmount;
	}
	public void setDealAmount(String dealAmount) {
		this.dealAmount = dealAmount;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getBuildYear() {
		return buildYear;
	}
	public void setBuildYear(String buildYear) {
		this.buildYear = buildYear;
	}
	public String getJibun() {
		return jibun;
	}
	public void setJibun(String jibun) {
		this.jibun = jibun;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "HouseDto [no=" + no + ", dong=" + dong + ", aptName=" + aptName + ", code=" + code + ", buildYear="
				+ buildYear + ", jibun=" + jibun + ", lat=" + lat + ", lng=" + lng + ", img=" + img + "]";
	}
	
	
}
