package com.ssafy.hh.google.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.hh.google.dto.LocationDto;
import com.ssafy.hh.house.dto.HouseDto;

@Mapper
public interface GoogleMapMapper {

	public List<LocationDto> google(String dong);

	public HashMap<String, List<String>> selectList();

	public List<String> selectDoeList();

	public List<String> selectSiList();

	public List<String> selectDongList();

	public List<String> selectSiListByDoe(String doe);

	public List<String> selectDongListByDoe(String doe);

	public List<String> selectDongListBySi(String si);

	public List<HouseDto> detail(@Param("aptName") String aptName, @Param("dong") String dong );

	public List<LocationDto> pos(String dong);

}
