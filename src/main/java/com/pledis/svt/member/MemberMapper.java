package com.pledis.svt.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	public MemberVO getMemberId(MemberVO memberVO)throws Exception;
	
	public int setInsert(MemberVO memberVO)throws Exception; 
	
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	
	public int setMemberDelete(MemberVO memberVO) throws Exception;

}
