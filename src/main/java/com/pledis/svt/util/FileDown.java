package com.pledis.svt.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.pledis.svt.board.file.FileVO;

@Component("fileDown")
public class FileDown extends AbstractView{
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		// 1. 파일이 저장된 폴더까지의 경로
		String filePath = "classpath:/static/" + (String)model.get("filePath");
		
		// 2. 저장된 파일명을 꺼내서 설정
		FileVO fileVO = (FileVO)model.get("fileVO");
		filePath = filePath+"/"+fileVO.getFileName();
		
		// 3. 위의 정보를 이용해서 File 객체 생성
		File file = resourceLoader.getResource(filePath).getFile();
		
		// 한글 처리
		response.setCharacterEncoding("UTF-8");
		
		// 총 파일의 크기
		response.setContentLengthLong(file.length());
		
		// 다운로드 시 파일 이름 인코딩 처리
		String fileName = URLEncoder.encode(fileVO.getOriName(), "UTF-8");
		
		//header 설정
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		// HDD에서 파일 연결
		FileInputStream fi = new FileInputStream(file);
		
		// Client 전송 준비
		OutputStream os = response.getOutputStream();
		
		// 전송
		FileCopyUtils.copy(fi, os);
		
		// 자원 해제
		os.close();
		fi.close();
		
		System.out.println(filePath);
	}

}
