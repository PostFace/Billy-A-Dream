package product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class GetUserAddress {
	private final String command = "getUserAddress.prd";
	
	@Autowired
	MemberDao mdao;
	
	@ResponseBody // �ش� �޼��尡 ��ȯ�� ���� jsp ������ �ƴ� ��ü �״�� �����Ѵ�. 
	@RequestMapping(value=command, produces="text/plain;charset=UTF-8")
	public String duplicationCheck(@RequestParam("id") String id) {
		
		System.out.println("GetUserAddress: " + id);
		
		
		MemberBean mbean = mdao.getMemberAddress(id);
		
		String sido = mbean.getAdd1_sido();
		String sigungu = mbean.getAdd2_sigungu();
		String eubmyeon = mbean.getAdd3_eubmyeon();
		String donglee = mbean.getAdd4_donglee();
		
		String result = "";
		
		result += sido;
		result += " " + sigungu;
		result += " " + eubmyeon;
		result += " " + donglee;
		
		return result;
	}
}