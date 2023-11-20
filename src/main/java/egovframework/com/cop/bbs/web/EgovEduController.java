package egovframework.com.cop.bbs.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EgovEduController {
	
	@RequestMapping("/com/cop/bbs/EgovEduIntro.do")	
	public String KDPEduIntro() throws Exception {
		
		return "egovframework/com/cop/bbs/EgovEduIntro";
		
	}
	
	@RequestMapping("/com/cop/bbs/EgovEduApp.do")
	public String KDPEduApp() throws Exception {
		
		return "egovframework/com/cop/bbs/EgovEduApp";
		
	}
	
	@RequestMapping("/com/cop/bbs/EgovEduList.do")
	public String KDPEduList() throws Exception {
		
		return "egovframework/com/cop/bbs/EgovEduList";
		
	}

}