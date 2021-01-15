package com.pledis.svt.twitter;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pledis.svt.board.BoardVO;
import com.pledis.svt.util.Pager;

@Controller
@RequestMapping(value = "/twitter/**")
public class TwitterController {
	
	@Autowired
	private TwitterService twitterBoardService;
	
	@Value("${board.twitter.filePath}")
	private String filePath;
	
	@GetMapping("twitterMain")
	public void twitterMain()throws Exception{
		
	}
	
	@GetMapping("twitterHome")
	public String getList(Pager pager, Model model) throws Exception{
		List<TwitterBoardVO> ar = twitterBoardService.getList(pager); 
		model.addAttribute("list", ar); 
		model.addAttribute("pager", pager);
		
		return "twitter/twitterHome";
	}
	
	@GetMapping("twitterWrite")
	public ModelAndView setInsert(TwitterBoardVO twitterBoardVO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("twitter/twitterWrite");
		return mv;
	}
	
	@PostMapping("twitterWrite")
	public ModelAndView setInsert(@Valid TwitterBoardVO twitterBoardVO, BindingResult bindingResult, MultipartFile[] files)throws Exception{
		ModelAndView mv = new ModelAndView();
		/*
		 * System.out.println("------ Notice Write ------");
		 * 
		 * if(bindingResult.hasErrors()) { System.out.println("------ 검증 실패 ------");
		 * mv.setViewName("board/boardWrite"); return mv; }
		 */
		int result = twitterBoardService.setInsert(twitterBoardVO, files);
		
		String message="Write Fail";
		if(result>0) {
			message ="Write Success";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./twitterHome");
		mv.setViewName("common/result");
		
		return mv;
	}

}
