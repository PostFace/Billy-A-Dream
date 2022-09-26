package product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import product.model.ProductBean;
import product.model.ProductDao;
import util.PagingProduct;

@Controller
public class ProductDetailSellerPrdController {
	
	private final String command = "detailsellerPrd.prd";
	private String getPage = "productDetailSellerPrd";
	
	@Autowired
	private ProductDao pdao;
	
	@RequestMapping(command)
	public String showSellerPrd(@RequestParam("no") String pno, 
								@RequestParam(value = "pageNumber", required = false) String pageNumber,
								HttpServletRequest request, Model model) {
		
		//��ǰ��ȣ�� �Ǹ��� id ���  ���� �Ǹ��� id�� �׻���� �Ǹ� ��ǰ �� �������� �̰�
		// product object will be shown
		ProductBean pb = pdao.getByNo(pno);

		
		
		// �� ���ڵ��� ������ ����� ������
		int totalCount = pdao.getTotalSellerPrdCount(pb.getSeller_no());
		String url = request.getContextPath() + "/" + command; // url = "/ex/list.tv" ������ ��ȣ�� �̷��� �־���� �ؼ�.
		PagingProduct pageInfo = new PagingProduct(pageNumber, null, totalCount, url, pno); // null ��ſ� 3�� �ѱ�� �� �������� 3���� ������
		
		// seller's products
		List<ProductBean> lists = pdao.getTotalSellerPrd(pb.getSeller_no(), pageInfo);
		
		for(ProductBean image : lists) {
			image.setImages(image.getImages().split(",")[0]);
		}
		
		model.addAttribute("lists",lists);
		model.addAttribute("pageInfo", pageInfo);
		
		return getPage;
	}
}