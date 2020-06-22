package com.ssafy.hh.member.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.hh.member.dto.MemberDto;

@Mapper
public interface MemberMapper {
	
	public int register(MemberDto userDto);

	public MemberDto login(@Param("email") String email, @Param("password") String password);
	
	public void delete(MemberDto userDto);

	public int modify(MemberDto dto);
}
