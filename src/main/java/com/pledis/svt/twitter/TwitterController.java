package com.pledis.svt.twitter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/twitter/**")
public class TwitterController {
	
	@GetMapping("twitterMain")
	public void twitterMain()throws Exception{
		
	}
	
	@GetMapping("twitterJoin")
	public void twitterJoin()throws Exception{
		
	}
	
	@GetMapping("twitterLogin")
	public void twitterLogin()throws Exception{
		
	}

}
