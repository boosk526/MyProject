package com.pledis.svt.twitterMember;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TwitterMemberMapper {
	
	public TwitterMemberVO getMemberId(TwitterMemberVO twitterMemberVO)throws Exception;
	
	public int setInsert(TwitterMemberVO twitterMemberVO)throws Exception; 
	
	public TwitterMemberVO getMemberLogin(TwitterMemberVO twitterMemberVO)throws Exception;
	
	public int setMemberDelete(TwitterMemberVO twitterMemberVO) throws Exception;

}
