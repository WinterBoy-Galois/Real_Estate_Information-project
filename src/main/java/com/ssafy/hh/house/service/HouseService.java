package com.ssafy.hh.house.service;

import java.util.List;

import com.ssafy.hh.house.bean.HouseBean;
import com.ssafy.hh.house.dto.HouseDto;
import com.ssafy.hh.house.dto.HouseGreenInfoDto;
import com.ssafy.hh.house.dto.HouseNearInfoDto;

public interface HouseService {

	public List<HouseDto> list();

	public HouseDto detail(int id);

	public List<HouseNearInfoDto> near(String dong);

	public List<HouseGreenInfoDto> green(String dong);

	public List<HouseDto> listForDong(String bean);

	public List<HouseDto> listForAptName(String bean);

	public List<HouseDto> listForPrice(String bean);


}
