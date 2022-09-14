package product.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductDao {
private final String namespace = "product.model.SQL"; // product.xml ���� namespace�� �����ذ�
	
	@Autowired //  root-context.xml���� ����� �� ��ü ����
	SqlSession sqlSessionTemplate;
	
	public int insertProduct(ProductBean pbean){
		int cnt = sqlSessionTemplate.insert(namespace + ".InsertProduct", pbean);
		return cnt;
	}
}
