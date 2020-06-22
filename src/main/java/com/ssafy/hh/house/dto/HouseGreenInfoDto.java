package com.ssafy.hh.house.dto;

public class HouseGreenInfoDto {
	private int num;
	private String name;
	private String code;
	private String pass;
	private String address;
	
	public HouseGreenInfoDto(int num, String name, String code, String pass, String address) {
		super();
		this.num = num;
		this.name = name;
		this.code = code;
		this.pass = pass;
		this.address = address;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
