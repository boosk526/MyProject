package com.pledis.svt.board;

import java.sql.Date;
import java.util.List;

import com.pledis.svt.board.file.FileVO;

import lombok.Data;

@Data
public class BoardVO {

	private long num;
	private String title;
	private String writer;
	private String contents;
	private Date regDate;
	
}
