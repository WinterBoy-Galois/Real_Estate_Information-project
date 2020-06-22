package com.ssafy.hh.house.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.hh.house.bean.HouseBean;
import com.ssafy.hh.house.dto.HouseDto;
import com.ssafy.hh.house.dto.HouseGreenInfoDto;
import com.ssafy.hh.house.dto.HouseNearInfoDto;

@Mapper
public interface HouseMapper {

	public List<HouseDto> list();
	public HouseDto detail(int id);
	public List<HouseNearInfoDto> near(String dong);
	public List<HouseGreenInfoDto> green(String dong);
	public List<HouseDto> listForDong(String bean);
	public List<HouseDto> listForAptName(String bean);
	public List<HouseDto> listForPrice(String bean);
}
