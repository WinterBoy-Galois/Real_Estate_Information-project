package com.ssafy.hh.notice.service;

import java.util.List;

import com.ssafy.hh.notice.dto.NoticeDto;

public interface NoticeService {

	List<NoticeDto> list();

	int insert(NoticeDto dto);

	NoticeDto detail(int id);
	
	int delete(int id);

	int update(NoticeDto dto);

	List<NoticeDto> search(String find);
}
