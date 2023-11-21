package egovframework.com.res.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * KDP 공유 및 개방 예약 컨트롤러 클래스
 * 
 * @author SCC 김현아
 * @since 2023.11.13
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일                           수정자               수정내용
 *  ------------   --------    ---------------------------
 *   2023.11.21      김현아               최초 생성
 * 
 *      </pre>
 */

@Controller
public class KDPResController {
	
	@RequestMapping("/res/resList.do")
	public String KDPIntroCheck() throws Exception {

		return "egovframework/com/res/reservationList";
	}
	
	@RequestMapping("/res/ResourceApp.do")
	public String ResourceAppCheck() throws Exception {
		
		return "egovframework/com/res/ResourceApp";
	}
}
