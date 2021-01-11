package com.pledis.svt.twitterMember;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import lombok.Data;

@Data
public class TwitterMemberVO {
	
	@NotEmpty
	private String id;
	@Length(min = 4 , max= 16)
	private String pw;
	private String name;
	@Length(min = 10 , max= 11)
	private long phone;
	@Length(min = 6 , max= 6)
	@Range(min = 1900, max = 2021)
	private long birth;
	
}
