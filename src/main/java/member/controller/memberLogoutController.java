package member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class memberLogoutController {
	
	private final String command = "out.mb";
	
	
	@RequestMapping(command)
	public String login(HttpSession session) {
		
		//String gotoPage = (String)request.getAttribute("destination");
		
		session.invalidate();//���ǵȰ� �� ����
		
		return "redirect:home";
	}
	
}
