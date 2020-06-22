package com.ssafy.hh.house.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.hh.house.bean.HouseBean;
import com.ssafy.hh.house.dto.HouseDto;
import com.ssafy.hh.house.dto.HouseGreenInfoDto;
import com.ssafy.hh.house.dto.HouseNearInfoDto;
import com.ssafy.hh.house.mapper.HouseMapper;

@Service
public class HouseServiceImpl implements HouseService {

	@Autowired
	HouseMapper houseMapper;
	
	@Override
	public List<HouseDto> list() {
		return houseMapper.list();
	}

	@Override
	public HouseDto detail(int id) {
		return houseMapper.detail(id);
	}

	@Override
	public List<HouseNearInfoDto> near(String dong) {
		return houseMapper.near(dong);
	}

	@Override
	public List<HouseGreenInfoDto> green(String dong) {
		return houseMapper.green(dong);
	}

	@Override
	public List<HouseDto> listForDong(String bean) {
		return houseMapper.listForDong(bean);
	}

	@Override
	public List<HouseDto> listForAptName(String bean) {
		return houseMapper.listForAptName(bean);
	}

	@Override
	public List<HouseDto> listForPrice(String bean) {
		return houseMapper.listForPrice(bean);
	}

	
	
	
}
