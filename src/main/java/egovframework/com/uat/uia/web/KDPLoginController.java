package egovframework.com.uat.uia.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KDPLoginController {
	
	@RequestMapping("/uat/uia/KDPLogin.do")
	public String KDPLogin() throws Exception {
		
		return "egovframework/com/uat/uia/KDPLogin";
		
	}
	
	@RequestMapping("/uat/uia/KDPRegister.do")
	public String KDPRegister() throws Exception {
		
		return "egovframework/com/uat/uia/KDPRegister";
		
	}

}
