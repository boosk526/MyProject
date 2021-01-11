package com.pledis.svt.twitter;

import java.util.List;

import com.pledis.svt.board.file.FileVO;
import com.pledis.svt.util.Pager;

public interface TwitterMapper {

	public List<TwitterBoardVO> getList(Pager pager)throws Exception;
	
	public long getCount(Pager pager)throws Exception;
	
	public int setInsert(TwitterBoardVO twitterBoardVO)throws Exception;
	
	public int setInsertFile(FileVO fileVO)throws Exception;
	
	public int setDelete(TwitterBoardVO twitterBoardVO)throws Exception;
	
	public TwitterBoardVO getOne(TwitterBoardVO twitterBoardVO)throws Exception;
	
	public FileVO getFile(FileVO fileVO)throws Exception;
	
}
