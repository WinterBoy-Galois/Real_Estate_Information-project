package com.ssafy.hh.move.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MoveController {

	@RequestMapping("/")
	String index(HttpServletRequest request) {
		request.setAttribute("subpage", "index");
		return "redirect:/index.html";
	}
	
	@RequestMapping("/home")
	String home(HttpServletRequest request) {
		request.setAttribute("subpage", "index");
		return "redirect:localhost:8080";
	}

	@RequestMapping("/apt")
	String apt(HttpServletRequest request) {
		request.setAttribute("subpage", "aptinfo");
		return "index";
	}
	
	@RequestMapping("/google")
	String google(HttpServletRequest request) {
		request.setAttribute("subpage", "google");
		return "index";
	}
	
	@GetMapping("/noticeMove")
	String notice(HttpServletRequest request) {
		return "redirect:/sfc/notice/index.html";
	}	
	
	@RequestMapping("/noticeInsertPage")
	String noticeInsertPage(HttpServletRequest request) {
		request.setAttribute("subpage", "noticeInsertPage");
		return "index";
	}	
	
	@RequestMapping("/infoPage")
	String infoPage(HttpServletRequest request) {
		request.setAttribute("subpage", "infoPage");
		return "index";
	}	
}
