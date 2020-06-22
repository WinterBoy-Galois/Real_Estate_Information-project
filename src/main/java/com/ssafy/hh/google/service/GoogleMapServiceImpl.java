package com.ssafy.hh.google.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.hh.google.dto.LocationDto;
import com.ssafy.hh.google.mapper.GoogleMapMapper;
import com.ssafy.hh.house.dto.HouseDto;

@Service
public class GoogleMapServiceImpl implements GoogleMapService {

	@Autowired
	GoogleMapMapper googleMapMapper;
	
	@Override
	public List<LocationDto> google(String dong) {
		return googleMapMapper.google(dong);
	}

	@Override
	public List<String> selectDoeList() {
		return googleMapMapper.selectDoeList();

	}

	@Override
	public List<String> selectSiList() {
		return googleMapMapper.selectSiList();

	}

	@Override
	public List<String> selectDongList() {
		return googleMapMapper.selectDongList();

	}

	@Override
	public List<String> selectSiListByDoe(String doe) {
		return googleMapMapper.selectSiListByDoe(doe);
	}

	@Override
	public List<String> selectDongListByDoe(String doe) {
		return googleMapMapper.selectDongListByDoe(doe);

	}

	@Override
	public List<String> selectDongListBySi(String si) {
		return googleMapMapper.selectDongListBySi(si);

	}

	@Override
	public List<HouseDto> detail(String aptName, String dong) {
		return googleMapMapper.detail(aptName, dong);

	}

	@Override
	public List<LocationDto> pos(String dong) {
		return googleMapMapper.pos(dong);
	}

	
	
	
	
}
