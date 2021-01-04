package com.pledis.svt.board.notice;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pledis.svt.board.BoardService;
import com.pledis.svt.board.BoardVO;
import com.pledis.svt.board.file.FileVO;
import com.pledis.svt.util.FileManager;
import com.pledis.svt.util.FilePathGenerator;
import com.pledis.svt.util.Pager;


@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeService implements BoardService{

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;

	@Autowired
	private FileManager fileManager;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		long totalCount = noticeMapper.getCount(pager);
		pager.makePage(totalCount);
		return noticeMapper.getList(pager);
	}

	@Override
	public int setInsert(BoardVO boardVO, MultipartFile[] files) throws Exception {
		
		int result = noticeMapper.setInsert(boardVO);
		System.out.println("Num : "+ boardVO.getNum());
		
		// 1. HDD에 File 저장
		// -- 저장할 폴더의 실제 경로명 필요
		File file = filePathGenerator.getUseResourceLoader(this.filePath);
		System.out.println(file.getAbsolutePath());
		
		for(MultipartFile multipartFile: files) {
			if(multipartFile.getSize()==0) {
				continue;
			}
			String fileName = fileManager.saveFileCopy(multipartFile, file);
			System.out.println(fileName);
			
			FileVO fileVO = new FileVO();
			fileVO.setFileName(fileName);
			fileVO.setOriName(multipartFile.getOriginalFilename());
			//fileVO.setNum(boardVO.getNum());
			fileVO.setNum(2000);
			
			result = noticeMapper.setInsertFile(fileVO);
		}
		
		return result;
	}
	
	@Override
	public int setUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.setUpdate(boardVO);
	}

	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.setDelete(boardVO);
	}

	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getOne(boardVO);
	}

	@Override
	public FileVO getFile(FileVO fileVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getFile(fileVO);
	}

	
	
}
