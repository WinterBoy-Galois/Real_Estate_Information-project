package com.ssafy.hh.house.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.hh.house.bean.HouseBean;
import com.ssafy.hh.house.dto.HouseDto;
import com.ssafy.hh.house.dto.HouseGreenInfoDto;
import com.ssafy.hh.house.dto.HouseNearInfoDto;
import com.ssafy.hh.house.service.HouseService;

@RestController
@CrossOrigin(origins = "http://localhost:8081")
public class HouseController {

	@Autowired
	HouseService houseService;
	
	@GetMapping(value="/aptinfo")
	List<HouseDto> list() {
		System.out.println("control");
		List<HouseDto> dto = houseService.list();
		return dto;
	}
	
	@GetMapping(value="/aptinfo/{id}")
	HouseDto detail(@PathVariable int id) {
		System.out.println("detail");
		HouseDto dto = houseService.detail(id);
		System.out.println(dto.toString());
		if(dto.getImgurl()== null)
			dto.setImgurl("다세대주택.jpg");
		return dto;
	}

	@GetMapping(value="/aptinfo/near/{dong}")
	List<HouseNearInfoDto> near(@PathVariable String dong) {		
		List<HouseNearInfoDto> dto = houseService.near(dong.trim());
		return dto;
	}
	
	@GetMapping(value="/aptinfo/green/{dong}")
	List<HouseGreenInfoDto> green(@PathVariable String dong) {
		List<HouseGreenInfoDto> dto = houseService.green(dong.trim());
		return dto;
	}

	@GetMapping(value="/search/{cate}/{text}")
	List<HouseDto> search(@PathVariable String cate, @PathVariable String text){
		
		List<HouseDto> dto = new ArrayList<HouseDto>();
		if(cate.equals("LIST")) {
			dto = houseService.list();
		}else if(cate.equals("DONG")) {
			dto = houseService.listForDong(text);
		}else if(cate.equals("APTNAME")) {
			dto = houseService.listForAptName(text);			
		}else if(cate.equals("PRICE")) {
			dto = houseService.listForPrice(text);				
		}
		
		return dto;
	}
}
