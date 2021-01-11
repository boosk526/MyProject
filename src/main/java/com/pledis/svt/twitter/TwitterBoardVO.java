package com.pledis.svt.twitter;

import java.sql.Date;
import java.util.List;

import com.pledis.svt.board.file.FileVO;

import lombok.Data;

@Data
public class TwitterBoardVO {

	private long num;
	private String contents;
	private Date regDate;
	
}
