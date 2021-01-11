package com.pledis.svt.twitter;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pledis.svt.board.file.FileVO;
import com.pledis.svt.board.notice.NoticeMapper;
import com.pledis.svt.util.FileManager;
import com.pledis.svt.util.FilePathGenerator;
import com.pledis.svt.util.Pager;

public interface TwitterService {
	
	public List<TwitterBoardVO> getList(Pager pager)throws Exception;
	
	public int setInsert(TwitterBoardVO twitterBoardVO,MultipartFile[] files)throws Exception;

	public int setDelete(TwitterBoardVO twitterBoardVO)throws Exception;
	
	public TwitterBoardVO getOne(TwitterBoardVO twitterBoardVO)throws Exception;
	
	public FileVO getFile(FileVO fileVO)throws Exception;
	
}

