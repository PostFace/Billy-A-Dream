package product.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("productDao")
public class ProductDao {
	
	private final String namespace = "product.model.SQL";
	
	@Autowired
	SqlSession sqlSessionTemplate;
	
	public int insertProduct(ProductBean pbean){
		int cnt = sqlSessionTemplate.insert(namespace + ".InsertProduct", pbean);
		return cnt;
	}
	
	public List<ProductBean> getRecentProductList(){
		List<ProductBean> lists = sqlSessionTemplate.selectList(namespace + ".GetRecentProductList");
		return lists;
	}
	
	public List<ProductBean> getPopularProductList(){
		List<ProductBean> lists = sqlSessionTemplate.selectList(namespace + ".GetPopularProductList");
		return lists;
	}
	
	public ProductBean getByNo(String no) {
		ProductBean pb = sqlSessionTemplate.selectOne(namespace+".GetByNo",no);
		return pb;
	}

	public void updateView_count(String no) {
		sqlSessionTemplate.update(namespace+".updateView_count",no);	
	}
	
	public List<ProductBean> getByseller_no(String seller_no) {
		List<ProductBean> lists =  sqlSessionTemplate.selectList(namespace+".getByseller_no",seller_no);
		return lists;
	}

	public List<ProductBean> getAllByNo(String[] pnoLists) {
		List<ProductBean> lists = sqlSessionTemplate.selectList(namespace+".getAllByNo",pnoLists);
		return lists;
	}

	public int updateProduct(ProductBean pbFromForm) {
		int cnt =  sqlSessionTemplate.update(namespace+".UpdateProduct", pbFromForm);
		return cnt;
	}

	public int deleteProduct(String no) {
		int cnt =  sqlSessionTemplate.delete(namespace+".DeleteProduct", no);
		return cnt;
	}
}