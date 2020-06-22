package com.ssafy.hh.google.service;

import java.util.HashMap;
import java.util.List;

import com.ssafy.hh.google.dto.LocationDto;
import com.ssafy.hh.house.dto.HouseDto;

public interface GoogleMapService {

	public List<LocationDto> google(String dong);

	public List<String> selectDoeList();

	public List<String> selectSiList();

	public List<String> selectDongList();

	public List<String> selectSiListByDoe(String doe);

	public List<String> selectDongListByDoe(String doe);

	public List<String> selectDongListBySi(String si);

	public List<HouseDto> detail(String aptName, String dong);

	public List<LocationDto> pos(String dong);

}
