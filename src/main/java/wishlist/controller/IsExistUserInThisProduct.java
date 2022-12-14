package wishlist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.MemberBean;
import member.model.MemberDao;
import product.model.ProductBean;
import product.model.ProductDao;
import wishlist.model.WishlistBean;
import wishlist.model.WishlistDao;

@Controller
public class IsExistUserInThisProduct {
	
	private final String command = "isExistUserInThisProduct.wish";
	
	@Autowired
	MemberDao mdao;
	
	@Autowired
	WishlistDao wdao;
	
	@ResponseBody 
	@RequestMapping(value=command, produces="text/plain;charset=UTF-8")
	public String addOrDelete(@RequestParam("id")String id, @RequestParam("no") int pno) {
		
		MemberBean mb =  mdao.getById(id);
		int mno = mb.getMno();
		
		WishlistBean wb = new WishlistBean();
		wb.setProduct_no(pno);
		wb.setMember_no(mno);
		
		Boolean isExistUserInThisProduct = wdao.isExistUserInThisProduct(wb);
		
		if(isExistUserInThisProduct == true) {
			return "existUser";
		}else {
			return "noExistUser";
		}
	}
}