package member.controller;



import java.net.Inet4Address;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberBean;
import member.model.MemberDao;
import member.model.MemberIpBean;
import member.model.MemberIpDao;
import member.model.sendEMAIL;

@Controller
public class memberRegisterController {
	
	private final String command = "register.mb";
	private String getPage = "register";
	private String gotoPage = "redirect:login.mb";
	
	@Autowired
	private MemberDao mdao;
	@Autowired
	private MemberIpDao midao;
	
	@RequestMapping(value = command , method = RequestMethod.GET)
	public String register() {
		
		return getPage;
	}
	
	@RequestMapping(value = command , method = RequestMethod.POST)
	public String register(MemberBean mb) throws Exception {
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePassword = encoder.encode(mb.getPw());
		Map<String,String>map = new HashMap<String,String>();
		
		
		
		mb.setPw(securePassword);
		mdao.InsertMember(mb); 
		
		
		mb = mdao.getById(mb.getId());
		String ip = Inet4Address.getLocalHost().getHostAddress();
		
		map.put("ip", ip);
		map.put("mno", String.valueOf(mb.getMno()));
		
		
		midao.InsertIp(map); 
		
		String msg = "[Biily A Dream]   "+mb.getName()+"";
		
		
		
		return gotoPage;
	}
}
