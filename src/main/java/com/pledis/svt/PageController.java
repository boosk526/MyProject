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
	
	@GetMapping("discographyDetailBlue")
	public void getDiscographyDetailBlue()throws Exception{
		
	}
	
	@GetMapping("discographyDetailEternity")
	public void getDiscographyDetailEternity()throws Exception{
		
	}
	
	@GetMapping("discographyDetailMagic")
	public void getDiscographyDetailMagic()throws Exception{
		
	}
	
	@GetMapping("discographyDetailStar")
	public void getDiscographyDetailStar()throws Exception{
		
	}
	

}
