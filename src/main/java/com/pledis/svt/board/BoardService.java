package com.pledis.svt.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.pledis.svt.board.file.FileVO;
import com.pledis.svt.util.Pager;

public interface BoardService {
	
	public List<BoardVO> getList(Pager pager)throws Exception;
	
	public int setInsert(BoardVO boardVO,MultipartFile[] files)throws Exception;

	public int setUpdate(BoardVO boardVO)throws Exception;
	
	public int setDelete(BoardVO boardVO)throws Exception;
	
	public BoardVO getOne(BoardVO boardVO)throws Exception;
	
	public FileVO getFile(FileVO fileVO)throws Exception;
	
}
