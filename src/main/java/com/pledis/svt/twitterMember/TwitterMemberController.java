package com.pledis.svt.twitterMember;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pledis.svt.board.BoardVO;

@Controller
@RequestMapping("/twitterMember/**")
public class TwitterMemberController {

	@Autowired
	private TwitterMemberService twitterMemberService;
	
	@GetMapping("twitterLogin")
	public void getMemberLogin()throws Exception{
		
	}
	
	@PostMapping("twitterLogin")
	public ModelAndView getMemberLogin(TwitterMemberVO twitterMemberVO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		twitterMemberVO = twitterMemberService.getMemberLogin(twitterMemberVO);
		
		if(twitterMemberVO != null) {
			session.setAttribute("twitterMember", twitterMemberVO);
			mv.setViewName("redirect:../");
		}else {
			String message = "Login Fail";
			mv.addObject("msg", message);
			mv.addObject("path", "./twitterLogin");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@GetMapping("twitterLogout")
	public ModelAndView getMemberLogout(HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		
		String message = "Logout";
		mv.addObject("msg",message);
		mv.addObject("path", "./twitterLogin");
		mv.setViewName("common/result");
		return mv;
	}
	
	
	@GetMapping("twitterMemberPage")
	public void getMemberPage()throws Exception{
		
		
	}
	
	@GetMapping("twitterJoin")
	public ModelAndView setMemberJoin(TwitterMemberVO twitterMemberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("twitterMember/twitterJoin");
		return mv;
		
	}
	
	@PostMapping("twitterJoin")
	public ModelAndView setMemberJoin(@Valid TwitterMemberVO twitterMemberVO, BindingResult bindingResult, HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		if(twitterMemberService.getMemberError(twitterMemberVO, bindingResult)) {
			mv.setViewName("twitterMember/twitterJoin");
			return mv;
		}
		
		int result = twitterMemberService.setInsert(twitterMemberVO);

		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView setMemberDelete(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		TwitterMemberVO twitterMemberVO =(TwitterMemberVO)session.getAttribute("twitterMember");
		int result = twitterMemberService.setMemberDelete(twitterMemberVO);
		
		mv.setViewName("redirect:../");
		session.invalidate();
	      
		return mv;
	}
	
}
