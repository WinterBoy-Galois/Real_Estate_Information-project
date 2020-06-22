package com.ssafy.hh.member.service;

import com.ssafy.hh.member.dto.MemberDto;

public interface MemberService {
	public MemberDto login(String email, String password);
	int register(MemberDto userDto);
	void delete(MemberDto userDto);
	public int modify(MemberDto dto);

}
