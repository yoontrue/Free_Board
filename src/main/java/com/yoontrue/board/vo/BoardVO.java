package com.yoontrue.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int b_no;
	private String b_title, b_content, b_id, fileName;
	private Date b_date;
	private int b_view;
	
}
