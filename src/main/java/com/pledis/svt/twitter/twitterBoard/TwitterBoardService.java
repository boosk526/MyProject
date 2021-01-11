package com.pledis.svt.twitter.twitterBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pledis.svt.board.file.FileVO;
import com.pledis.svt.twitter.TwitterBoardVO;
import com.pledis.svt.twitter.TwitterService;
import com.pledis.svt.util.FileManager;
import com.pledis.svt.util.FilePathGenerator;
import com.pledis.svt.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class TwitterBoardService implements TwitterService{

	@Autowired
	private TwitterBoardMapper twitterBoardMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;

	@Autowired
	private FileManager fileManager;
	
	@Value("${board.twitter.filePath}")
	private String filePath;
	
	@Override
	public List<TwitterBoardVO> getList(Pager pager) throws Exception {
			pager.makeRow();
			long totalCount = twitterBoardMapper.getCount(pager);
			pager.makePage(totalCount);
			
		return twitterBoardMapper.getList(pager);
	}

	@Override
	public int setInsert(TwitterBoardVO twitterBoardVO, MultipartFile[] files) throws Exception {
		int result = twitterBoardMapper.setInsert(twitterBoardVO);
		System.out.println("Num : "+ twitterBoardVO.getNum());
		
		return result;
	}

	@Override
	public int setDelete(TwitterBoardVO twitterBoardVO) throws Exception {
		// TODO Auto-generated method stub
		return twitterBoardMapper.setDelete(twitterBoardVO);
	}

	@Override
	public TwitterBoardVO getOne(TwitterBoardVO twitterBoardVO) throws Exception {
		// TODO Auto-generated method stub
		return twitterBoardMapper.getOne(twitterBoardVO);
	}

	@Override
	public FileVO getFile(FileVO fileVO) throws Exception {
		// TODO Auto-generated method stub
		return twitterBoardMapper.getFile(fileVO);
	}

}
