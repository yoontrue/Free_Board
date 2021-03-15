package com.yoontrue.board.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;


public class BoardVO {
	
	private int b_no;
	private String b_title, b_content, b_id;
	private Date b_date;
	private int b_view;
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public int getB_view() {
		return b_view;
	}
	public void setB_view(int b_view) {
		this.b_view = b_view;
	}
	@Override
	public String toString() {
		return "BoardVO [b_no=" + b_no + ", b_title=" + b_title + ", b_content=" + b_content + ", b_id=" + b_id
				+ ", b_date=" + b_date + ", b_view=" + b_view + "]";
	}
	
}
