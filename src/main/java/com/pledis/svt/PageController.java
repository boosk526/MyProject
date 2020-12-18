package com.pledis.svt;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info/**")
public class PageController {
	
	@GetMapping("profile")
	public void getMemberLogin()throws Exception{
		
	}

}
