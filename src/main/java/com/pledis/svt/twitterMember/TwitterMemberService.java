package com.pledis.svt.twitterMember;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
public class TwitterMemberService {
	
	@Autowired
	private TwitterMemberMapper twitterMemberMapper;

	public TwitterMemberVO getMemberLogin(TwitterMemberVO twitterMemberVO)throws Exception{
		return twitterMemberMapper.getMemberLogin(twitterMemberVO);
	}
	
	public int setMemberDelete(TwitterMemberVO twitterMemberVO) throws Exception {
		// TODO Auto-generated method stub
		return twitterMemberMapper.setMemberDelete(twitterMemberVO);
	}
	
	public int setInsert(TwitterMemberVO twitterMemberVO)throws Exception {
		return twitterMemberMapper.setInsert(twitterMemberVO);
	}
	
	public boolean getMemberError(TwitterMemberVO twitterMemberVO, BindingResult bindingResult)throws Exception{
		// result : true -> 검증 위반(실패)
		// result : false -> 검증 성공
		boolean result = false;
		
		// 기본 annotation 검증 결과
		if(bindingResult.hasErrors()) {
			result = true;
		}
		
		// id 중복검사
		TwitterMemberVO mv = twitterMemberMapper.getMemberId(twitterMemberVO);
		if(mv != null) {
			bindingResult.rejectValue("id", "twitterMemberVO.id.duplication");
			result = true;
		}
		
		
		return result;
	}
	
}
