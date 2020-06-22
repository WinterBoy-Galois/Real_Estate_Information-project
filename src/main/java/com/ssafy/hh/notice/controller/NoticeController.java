package com.ssafy.hh.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import com.ssafy.hh.notice.dto.NoticeDto;
import com.ssafy.hh.notice.service.NoticeService;

@RestController
@CrossOrigin(origins = "http://localhost:8081")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	@GetMapping(value="/notice")
	List<NoticeDto> list(){
		List<NoticeDto> list = noticeService.list();
		
		return list;
	}
	
	@GetMapping(value="/notice/search/{find}")
	List<NoticeDto> search(@PathVariable String find){
		return noticeService.search(find);
	}
	
	@PostMapping(value="/notice")
	int insert(@RequestBody NoticeDto dto, HttpServletRequest request) {
		
		System.out.println(dto.toString());
		System.out.println("insert");
		int ret = noticeService.insert(dto);
		
		return ret;
	}
	
	@GetMapping(value="/noticeDetail/{id}")
	NoticeDto detail(@PathVariable int id) {
		System.out.println(id);
		return noticeService.detail(id);
	}
	
	@PutMapping(value="/notice/{id}")
	public int update(@RequestBody NoticeDto dto) {
		System.out.println(dto.toString());
		return noticeService.update(dto);
	}
	
	
	@DeleteMapping(value = "/notice/{id}")
	public int delete(@PathVariable int id) {
		return noticeService.delete(id);
	}
}
