package com.pledis.svt.member;

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
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberLogin")
	public void getMemberLogin()throws Exception{
		
	}
	
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.getMemberLogin(memberVO);
		
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}else {
			String message = "Login Fail";
			mv.addObject("msg", message);
			mv.addObject("path", "./memberLogin");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@GetMapping("memberLogout")
	public ModelAndView getMemberLogout(HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		
		String message = "Logout";
		mv.addObject("msg",message);
		mv.addObject("path", "./memberLogin");
		mv.setViewName("common/result");
		return mv;
	}
	
	
	@GetMapping("memberPage")
	public void getMemberPage()throws Exception{
		
		
	}
	
	@GetMapping("memberJoin")
	public ModelAndView setMemberJoin(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberJoin");
		return mv;
		
	}
	
	@PostMapping("memberJoin")
	public ModelAndView setMemberJoin(@Valid MemberVO memberVO, BindingResult bindingResult, HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		if(memberService.getMemberError(memberVO, bindingResult)) {
			mv.setViewName("member/memberJoin");
			return mv;
		}
		
		int result = memberService.setInsert(memberVO);

		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView setMemberDelete(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO =(MemberVO)session.getAttribute("member");
		int result = memberService.setMemberDelete(memberVO);
		
		mv.setViewName("redirect:../");
		session.invalidate();
	      
		return mv;
	}
	
}
