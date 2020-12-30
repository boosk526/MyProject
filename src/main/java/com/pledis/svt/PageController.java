package com.pledis.svt;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info/**")
public class PageController {
	
	@GetMapping("profile")
	public void getProfile()throws Exception{
		
	}
	
	@GetMapping("discography")
	public void getDiscography()throws Exception{
		
	}
	
	@GetMapping("discographyInfo")
	public void getDiscographyInfo()throws Exception{
		
	}

}
