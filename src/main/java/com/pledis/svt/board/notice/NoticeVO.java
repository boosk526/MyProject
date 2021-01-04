package com.pledis.svt.board.notice;

import java.util.List;

import com.pledis.svt.board.BoardVO;
import com.pledis.svt.board.file.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class NoticeVO extends BoardVO{

	private List<FileVO> files;
	
}
