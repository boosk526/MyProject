package com.pledis.svt.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;

	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception{
		return memberMapper.getMemberLogin(memberVO);
	}
	
	public int setInsert(MemberVO memberVO)throws Exception {
		return memberMapper.setInsert(memberVO);
	}
	
	public int setInsertFile(MemberFileVO memberFileVO)throws Exception{
		return memberMapper.setInsertFile(memberFileVO);
	}
	
	public boolean getMemberError(MemberVO memberVO, BindingResult bindingResult)throws Exception{
		// result : true -> 검증 위반(실패)
		// result : false -> 검증 성공
		boolean result = false;
		
		// 기본 annotation 검증 결과
		if(bindingResult.hasErrors()) {
			result = true;
		}
		
		// password가 일치하는지 검증
		if(!memberVO.getPw().equals(memberVO.getPw2())) {
			//bindingResult.rejectValue("멤버변수명", "propertie 파일의 코드");
			bindingResult.rejectValue("pw2", "memberVO.password.notEqual");
			result = true;
		}
		
		// id 중복검사
		MemberVO mv = memberMapper.getMemberId(memberVO);
		if(mv != null) {
			bindingResult.rejectValue("id", "memberVO.id.duplication");
			result = true;
		}
		
		
		return result;
	}
	
	
}
