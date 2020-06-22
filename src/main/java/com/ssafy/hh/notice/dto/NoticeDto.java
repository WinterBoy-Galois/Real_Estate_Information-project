package com.ssafy.hh.notice.dto;

import java.util.Date;

public class NoticeDto {
	private int noticeId;
	private String userName;
	private String title;
	private String content;
	private Date regDt;
	private int readCount;
	
	
	public NoticeDto() {
		super();
	}

	public NoticeDto(int noticeId, String userName, String title, String content, Date regDt, int readCount) {
		super();
		this.noticeId = noticeId;
		this.userName = userName;
		this.title = title;
		this.content = content;
		this.regDt = regDt;
		this.readCount = readCount;
	}

	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "NoticeDto [noticeId=" + noticeId + ", userName=" + userName + ", title=" + title + ", content="
				+ content + ", regDt=" + regDt + ", readCount=" + readCount + "]";
	}
	
	
	
}
