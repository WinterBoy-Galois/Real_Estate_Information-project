package com.ssafy.hh.google.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.hh.google.dto.LocationDto;
import com.ssafy.hh.google.service.GoogleMapService;
import com.ssafy.hh.house.dto.HouseDto;

@RestController
@CrossOrigin(origins = { "*" }, maxAge = 6000)
public class GoogleMapController {

	@Autowired
	GoogleMapService googleMapService;
	
	@GetMapping(value="/google/{dong}")
	List<LocationDto> google(@PathVariable String dong){

		return googleMapService.google(dong);
	}

	@GetMapping(value="/google/list")
	HashMap<String, List<String>> selectList(){
		
		HashMap<String, List<String>> dto = new HashMap<String, List<String>>();
		List<String> doe = googleMapService.selectDoeList();
		List<String> si = googleMapService.selectSiList();
		List<String> dong = googleMapService.selectDongList();
		
		dto.put("doe", doe);
		dto.put("si", si);
		dto.put("dong", dong);
		
		return dto;
	}
	
	@GetMapping(value="/google/guDongList/{doe}")
	HashMap<String, List<String>> guDongList(@PathVariable String doe){
		System.out.println(doe);
		HashMap<String, List<String>> dto = new HashMap<String, List<String>>();
		List<String> si = googleMapService.selectSiListByDoe(doe);
		List<String> dong = googleMapService.selectDongListByDoe(doe);
		
		dto.put("si", si);
		dto.put("dong", dong);
		
		return dto;
	}
	
	@GetMapping(value="/google/dongList/{si}")
	HashMap<String, List<String>> dongList(@PathVariable String si){
		System.out.println(si);
		HashMap<String, List<String>> dto = new HashMap<String, List<String>>();
		List<String> dong = googleMapService.selectDongListBySi(si);
		
		dto.put("dong", dong);
		
		return dto;
	}
	
	@GetMapping(value="/google/detail/{aptName}/{dong}")
	List<HouseDto> detail(@PathVariable String aptName, @PathVariable String dong){
		System.out.println(aptName + dong);
		return googleMapService.detail(aptName, dong);
	}
	
	@GetMapping(value="/google/pos/{dong}")
	List<LocationDto> pos(@PathVariable String dong){
		System.out.println(dong);
		return googleMapService.pos(dong);
	}
	
}
