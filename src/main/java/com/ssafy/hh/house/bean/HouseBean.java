package com.ssafy.hh.house.bean;

import java.util.List;

public class HouseBean {
	//private List<String> checkList;
	private String cate;
	private String text;
	public HouseBean(String cate, String text) {
		super();
		this.cate = cate;
		this.text = text;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
	
	
	
}
