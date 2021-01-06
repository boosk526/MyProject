package com.pledis.svt.board.notice;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pledis.svt.board.BoardVO;
import com.pledis.svt.board.file.FileVO;
import com.pledis.svt.util.Pager;


@Controller
@RequestMapping(value = "/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@ModelAttribute(name="board")
	public String getBoard() {
		return "notice";
	}
	
	@GetMapping("noticeList")
	public String getList(Pager pager, Model model) throws Exception{
		List<BoardVO> ar = noticeService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "board/boardList";
	}
	
	@GetMapping("noticeSelect")
	public ModelAndView getOne(BoardVO boardVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		boardVO = noticeService.getOne(boardVO);
			mv.setViewName("board/boardSelect");
			mv.addObject("vo", boardVO);
		
		return mv;
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView setInsert(BoardVO boardVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardWrite");
		return mv;
	}

	@PostMapping("noticeWrite")
	public ModelAndView setInsert(@Valid BoardVO boardVO, BindingResult bindingResult, MultipartFile[] files)throws Exception{
		ModelAndView mv = new ModelAndView();
		/*
		 * System.out.println("------ Notice Write ------");
		 * 
		 * if(bindingResult.hasErrors()) { System.out.println("------ 검증 실패 ------");
		 * mv.setViewName("board/boardWrite"); return mv; }
		 */
		int result = noticeService.setInsert(boardVO, files);
		
		String message="Write Fail";
		if(result>0) {
			message ="Write Success";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	 @GetMapping("noticeUpdate")
	   public ModelAndView setUpdate2(BoardVO boardVO) throws Exception{
	      ModelAndView mv = new ModelAndView();
	      boardVO = noticeService.getOne(boardVO);
	      mv.addObject("vo",boardVO);
	      mv.setViewName("board/boardUpdate");
	      return mv;
	   }
	   
	   @PostMapping("noticeUpdate")
	   public ModelAndView setUpdate(BoardVO boardVO) throws Exception{
	      ModelAndView mv = new ModelAndView();
	      int result = noticeService.setUpdate(boardVO);
	      
	      String message = "Update Fail";
	      if(result>0) {
	         message = "Update Success";
	      }
	      
	      mv.setViewName("common/result");
	      mv.addObject("msg",message);
	      mv.addObject("path", "./noticeList");
	      
	      return mv;
	   }
	   
	   @GetMapping("noticeDelete")
	   public ModelAndView setDelete(BoardVO boardVO) throws Exception{
	      ModelAndView mv = new ModelAndView();
	      int result = noticeService.setDelete(boardVO);
	      
	      String message = "Delete Fail!";
	      if(result>0) {
	         message = "Delete Success!";
	      }
	      
	      mv.setViewName("common/result");
	      mv.addObject("msg",message);
	      mv.addObject("vo",boardVO);
	      mv.addObject("path", "./noticeList");
	      
	      return mv;
	      
	   }
	
		@GetMapping("noticeFileDown")
		public ModelAndView getNoticeFileDown(FileVO fileVO)throws Exception{
			ModelAndView mv = new ModelAndView();
			fileVO = noticeService.getFile(fileVO);
			
			System.out.println(fileVO.getFileName());
			
			mv.addObject("fileVO", fileVO);
			mv.addObject("filePath", filePath);
//			mv.addObject("filePath", "upload/notice"); properties에 써 있기 때문에 이렇게 할 필요 X
			mv.setViewName("fileDown");
			
			return mv;
		}
		
}
