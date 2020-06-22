package com.ssafy.hh.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.hh.member.dto.MemberDto;
import com.ssafy.hh.member.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public int register(MemberDto userDto) {
		return memberMapper.register(userDto);
	}

	@Override
	public MemberDto login(String email, String password) {
		return memberMapper.login(email, password);
	}

	@Override
	public void delete(MemberDto userDto) {
		memberMapper.delete(userDto);
	}

	@Override
	public int modify(MemberDto dto) {
		return memberMapper.modify(dto);

	}


}
