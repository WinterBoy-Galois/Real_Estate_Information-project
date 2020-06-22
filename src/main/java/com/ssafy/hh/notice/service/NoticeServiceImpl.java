package com.ssafy.hh.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.hh.notice.dto.NoticeDto;
import com.ssafy.hh.notice.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeMapper noticeMapper;
	
	@Override
	public List<NoticeDto> list() {
		return noticeMapper.list();
	}

	@Override
	public int insert(NoticeDto dto) {
		return noticeMapper.insert(dto);

	}

	@Override
	public NoticeDto detail(int id) {
		return noticeMapper.detail(id);
	}

	@Override
	public int delete(int id) {
		return noticeMapper.delete(id);
	}

	@Override
	public int update(NoticeDto dto) {
		return noticeMapper.update(dto);
	}

	@Override
	public List<NoticeDto> search(String find) {
		return noticeMapper.search(find);
	}
	
	
}
