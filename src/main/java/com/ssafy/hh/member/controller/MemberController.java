package com.ssafy.hh.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.hh.member.dto.MemberDto;
import com.ssafy.hh.member.service.MemberService;

@Controller
@CrossOrigin(origins = "http://localhost:8081")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@ExceptionHandler
	public ModelAndView handler(Exception ex) {
		ModelAndView mav = new ModelAndView("error/errorHandler");
		mav.addObject("msg", ex.getMessage());
		ex.printStackTrace();
		return mav;
	}

	@GetMapping(value = "/login")
	public String loginForm() {
		return "loginForm";
	}

	@PostMapping(value = "/login")
	public @ResponseBody MemberDto login(@RequestBody MemberDto dto, HttpSession session) {
		System.out.println("login들어옴");
		System.out.println(dto.toString());
		MemberDto userDto = memberService.login(dto.getEmail(), dto.getPassword());

		System.out.println(userDto);
		return userDto;
	}

	@PostMapping(value = "/logout")
	public @ResponseBody String logout(HttpSession session) {
		session.invalidate();
		return "success";
	}

	
	@GetMapping("/register")
	public String register() {
		return "member";
	}

	@PostMapping("/register")
	public @ResponseBody int register(@RequestBody MemberDto userDto) {
		System.out.println(userDto.toString());
		int res = memberService.register(userDto);
		
		return res;
	}
	
	
	@PutMapping(value="/modify")
	public @ResponseBody int modify(@RequestBody MemberDto dto) {
		return memberService.modify(dto);
	}
	
	@GetMapping("/delete")
	public String delete() {
		return "member";
	}

	@PostMapping("/delete")
	public String delete(MemberDto userDto) {
		memberService.delete(userDto);
		return "loginForm";
	}
	
	
	
	

}
