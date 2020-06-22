package com.ssafy.hh.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.hh.notice.dto.NoticeDto;

@Mapper
public interface NoticeMapper {

	public List<NoticeDto> list();

	public int insert(NoticeDto dto);

	public NoticeDto detail(int id);

	public int delete(int id);

	public int update(NoticeDto dto);

	public List<NoticeDto> search(String find);

}
