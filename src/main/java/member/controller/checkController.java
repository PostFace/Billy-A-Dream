package member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.MemberDao;
import member.model.getRandomPassword;

@Controller
public class checkController {
	
	
	@Autowired
	private MemberDao mdao;
	
	@ResponseBody // ���̵� �ߺ�üũ
	@RequestMapping("idcheck.mb")
	public String idcheck(@RequestParam("id") String id) {
		
		int cnt = mdao.idCheck(id);
		
		if(cnt>0)
			return "no";
		
		return "yes";
	}
	
	@ResponseBody // ���̵� ã��
	@RequestMapping("findid.mb")
	public String FindID(@RequestParam("name") String name,@RequestParam("hp") String hp) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("name", name);
		map.put("hp", hp);
		
		String id = mdao.FindId(map); 
		if( id != null) {
			return id;
		}
		
		return "no";
	}
	
	@ResponseBody // ��й�ȣ ã��
	@RequestMapping("findpw.mb")
	public String FindPW(@RequestParam("id") String id,@RequestParam("hp") String hp) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("id", id);
		map.put("hp", hp);
		
		String temporaryPw = getRandomPassword.tempPassword(8);
		System.out.println(temporaryPw);
		
		
		return "no";
	}
}
