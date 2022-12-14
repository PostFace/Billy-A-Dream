package util;
// for jeon heouk ssi
public class Paging {
	// ����¡ ���� ����
	private int totalCount = 0; // �� ���ڵ� �Ǽ�
	private int totalPage = 0; // ��ü ������ ��
	private int pageNumber = 0; // ������ ������ �ѹ�(ǥ�� ������ �������� 1���� totalPage�����̴�.)
	private int pageSize = 0; // �� �������� ������ �Ǽ�
	private int beginRow = 0; // ���� �������� ���� ��
	private int endRow = 0; // ���� �������� �� ��
	private int pageCount = 3; // �� ȭ�鿡 ������ ������ ��ũ �� (������ ��ȣ ����) 3�� ������ �̻� �����ؾ� ���� ó�� �� ���� ��ư�� ������
	private int beginPage = 0; // ����¡ ó�� ���� ������ ��ȣ
	private int endPage = 0; // ����¡ ó�� �� ������ ��ȣ
	private int offset = 0 ;
	private int limit = 0 ;
	private String url = "" ; //���� ==>  http://localhost:9191/MyServlet/list.do
	private String pagingHtml = "";//�ϴ��� ���� ������ ��ũ
	
	private String whatColumn = "" ; //�˻� ���(�ۼ���, ������, ��ü �˻��� all) ���
	private String keyword = "" ; //�˻��� �ܾ� 
	private String add2Name = "";
	private String pno = ""; // pno
	
	
	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public String getAdd2Name() {
		return add2Name;
	}

	public void setAdd2Name(String add2Name) {
		this.add2Name = add2Name;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getPageNumber() {
		return pageNumber;
	}


	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public int getBeginRow() {
		return beginRow;
	}


	public void setBeginRow(int beginRow) {
		this.beginRow = beginRow;
	}


	public int getEndRow() {
		return endRow;
	}


	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}


	public int getPageCount() {
		return pageCount;
	}


	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}


	public int getBeginPage() {
		return beginPage;
	}


	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getOffset() {
		return offset;
	}


	public void setOffset(int offset) {
		this.offset = offset;
	}


	public int getLimit() {
		return limit;
	}


	public void setLimit(int limit) {
		this.limit = limit;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getPagingHtml() {
		System.out.println("pagingHtml:"+pagingHtml);
		
		return pagingHtml;
//		pagingHtml:
//			&nbsp;<font color='red'>1</font>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=2&pageSize=2&whatColumn=null&keyword=null'>2</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=3&pageSize=2&whatColumn=null&keyword=null'>3</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=4&pageSize=2&whatColumn=null&keyword=null'>4</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=5&pageSize=2&whatColumn=null&keyword=null'>5</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=6&pageSize=2&whatColumn=null&keyword=null'>6</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=7&pageSize=2&whatColumn=null&keyword=null'>7</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=8&pageSize=2&whatColumn=null&keyword=null'>8</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=9&pageSize=2&whatColumn=null&keyword=null'>9</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=10&pageSize=2&whatColumn=null&keyword=null'>10</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=11&pageSize=2&whatColumn=null&keyword=null'>����</a>&nbsp;&nbsp;<a href='/ex/list.ab?pageNumber=22&pageSize=2&whatColumn=null&keyword=null'>�� ��</a>&nbsp;

	}


	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}


	public String getWhatColumn() {
		return whatColumn;
	}


	public void setWhatColumn(String whatColumn) {
		this.whatColumn = whatColumn;
	}


	public String getKeyword() {
		return keyword;
	}


	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Paging(
			String _pageNumber, 
			String _pageSize,  
			int totalCount,
			String url,
			String pno
			) {		

		if(  _pageNumber == null || _pageNumber.equals("null") || _pageNumber.equals("")  ){
			System.out.println("_pageNumber:"+_pageNumber); // null
			_pageNumber = "1" ; // _pageNumber�� null�̸� ���� �������� 1���������� �������� ���ڶ�� �ǹ�
		}
		this.pageNumber = Integer.parseInt( _pageNumber ) ; 

		if( _pageSize == null || _pageSize.equals("null") || _pageSize.equals("") ){
			_pageSize = "6" ; // �� �������� ������ ���ڵ� ����
		}		
		this.pageSize = Integer.parseInt( _pageSize ) ;
		
		this.limit = pageSize ; // �� �������� ������ ���ڵ� ����

		this.totalCount = totalCount ; 

		this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ; // double ������ ����� 2.5�� ���� �� �ִ°��� ������ ������ ����, ceil�� ������ �ø��ϴ� �Լ�
		
		//�ش� ���������� ������ ���ڵ��� ���۰� ���� ���ϴ� �κ�
		this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
		this.endRow =  this.pageNumber * this.pageSize ;
		//�� ������ ���������ִ� ���ڵ� �ϳ��� �����Ǹ� �ٷ� ���� �������� ���������� ��.
		if( this.pageNumber > this.totalPage ){
			this.pageNumber = this.totalPage ;
		}
		
		//offset�ǹ� : �� ���������� 2���� �������� ��Ȳ�̶� �����ϸ� 1������ ������ �ǳʶ�� ������ 0,
		//			  2������������ �ǳʶ�� 2�� ���ڵ� �̹Ƿ� 2,
		//			  3������������ �ǳʶ۰� 4�� ���ڵ� �̹Ƿ� 4
		this.offset = ( pageNumber - 1 ) * pageSize ;  // ������ �̵��� ���� �ǳʶ� ���ڵ� ������ ����
		if( this.endRow > this.totalCount ){
			this.endRow = this.totalCount  ;
		}

		this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
		this.endPage = this.beginPage + this.pageCount - 1 ;
		System.out.println("pageNumber:"+pageNumber+"/totalPage:"+totalPage);	
		
		if( this.endPage > this.totalPage ){
			this.endPage = this.totalPage ;
		}
		
		this.url = url ; //  /ex/list.ab
		
		this.pno = pno;
		
		this.pagingHtml = getPagingHtml(url) ; // ������ �ϴ��� ������ ���� �ڵ�鿡 ���� html �ڵ尡 ���ڿ��� ��������� ��ȯ��
	}
	

	public Paging(
			String _pageNumber, 
			String _pageSize,  
			int totalCount,
			String url, 
			String whatColumn, 
			String keyword
			) {		

		if(  _pageNumber == null || _pageNumber.equals("null") || _pageNumber.equals("")  ){
			System.out.println("_pageNumber:"+_pageNumber); // null
			_pageNumber = "1" ; // _pageNumber�� null�̸� ���� �������� 1���������� �������� ���ڶ�� �ǹ�
		}
		this.pageNumber = Integer.parseInt( _pageNumber ) ; 

		if( _pageSize == null || _pageSize.equals("null") || _pageSize.equals("") ){
			_pageSize = "6" ; // �� �������� ������ ���ڵ� ����
		}		
		this.pageSize = Integer.parseInt( _pageSize ) ;
		
		this.limit = pageSize ; // �� �������� ������ ���ڵ� ����

		this.totalCount = totalCount ; 

		this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ; // double ������ ����� 2.5�� ���� �� �ִ°��� ������ ������ ����, ceil�� ������ �ø��ϴ� �Լ�
		
		//�ش� ���������� ������ ���ڵ��� ���۰� ���� ���ϴ� �κ�
		this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
		this.endRow =  this.pageNumber * this.pageSize ;
		//�� ������ ���������ִ� ���ڵ� �ϳ��� �����Ǹ� �ٷ� ���� �������� ���������� ��.
		if( this.pageNumber > this.totalPage ){
			this.pageNumber = this.totalPage ;
		}
		
		//offset�ǹ� : �� ���������� 2���� �������� ��Ȳ�̶� �����ϸ� 1������ ������ �ǳʶ�� ������ 0,
				//			  2������������ �ǳʶ�� 2�� ���ڵ� �̹Ƿ� 2,
				//			  3������������ �ǳʶ۰� 4�� ���ڵ� �̹Ƿ� 4
		this.offset = ( pageNumber - 1 ) * pageSize ;   // ������ �̵��� ���� �ǳʶ� ���ڵ� ������ ����
		if( this.endRow > this.totalCount ){
			this.endRow = this.totalCount  ;
		}

		this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
		this.endPage = this.beginPage + this.pageCount - 1 ;
		System.out.println("pageNumber:"+pageNumber+"/totalPage:"+totalPage);	
		
		if( this.endPage > this.totalPage ){
			this.endPage = this.totalPage ;
		}
		
		System.out.println("pageNumber2:"+pageNumber+"/totalPage2:"+totalPage);	
		this.url = url ; //  /ex/list.ab
		this.whatColumn = whatColumn ;
		this.keyword = keyword ;
		System.out.println("whatColumn:"+whatColumn+"/keyword:"+keyword);
		
		this.pagingHtml = getPagingHtml(url) ; // ������ �ϴ��� ������ ���� �ڵ�鿡 ���� html �ڵ尡 ���ڿ��� ��������� ��ȯ��
	
	}
	
	public Paging(
			String _pageNumber, 
			String _pageSize,  
			int totalCount,
			String url, 
			String whatColumn, 
			String keyword,
			String add2Name
			) {		

		if(  _pageNumber == null || _pageNumber.equals("null") || _pageNumber.equals("")  ){
			System.out.println("_pageNumber:"+_pageNumber); // null
			_pageNumber = "1" ; // _pageNumber�� null�̸� ���� �������� 1���������� �������� ���ڶ�� �ǹ�
		}
		this.pageNumber = Integer.parseInt( _pageNumber ) ; 

		if( _pageSize == null || _pageSize.equals("null") || _pageSize.equals("") ){
			_pageSize = "8" ; // �� �������� ������ ���ڵ� ����
		}		
		this.pageSize = Integer.parseInt( _pageSize ) ;
		
		this.limit = pageSize ; // �� �������� ������ ���ڵ� ����

		this.totalCount = totalCount ; 

		this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ; // double ������ ����� 2.5�� ���� �� �ִ°��� ������ ������ ����, ceil�� ������ �ø��ϴ� �Լ�
		
		//�ش� ���������� ������ ���ڵ��� ���۰� ���� ���ϴ� �κ�
		this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
		this.endRow =  this.pageNumber * this.pageSize ;
		//�� ������ ���������ִ� ���ڵ� �ϳ��� �����Ǹ� �ٷ� ���� �������� ���������� ��.
		if( this.pageNumber > this.totalPage ){
			this.pageNumber = this.totalPage ;
		}
		
		//offset�ǹ� : �� ���������� 2���� �������� ��Ȳ�̶� �����ϸ� 1������ ������ �ǳʶ�� ������ 0,
		//			  2������������ �ǳʶ�� 2�� ���ڵ� �̹Ƿ� 2,
		//			  3������������ �ǳʶ۰� 4�� ���ڵ� �̹Ƿ� 4
this.offset = ( pageNumber - 1 ) * pageSize ;  // ������ �̵��� ���� �ǳʶ� ���ڵ� ������ ����
		if( this.endRow > this.totalCount ){
			this.endRow = this.totalCount  ;
		}

		this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
		this.endPage = this.beginPage + this.pageCount - 1 ;
		System.out.println("pageNumber:"+pageNumber+"/totalPage:"+totalPage);	
		
		if( this.endPage > this.totalPage ){
			this.endPage = this.totalPage ;
		}
		
		System.out.println("pageNumber2:"+pageNumber+"/totalPage2:"+totalPage);	
		this.url = url ; //  /ex/list.ab
		this.whatColumn = whatColumn ;
		this.keyword = keyword ;
		System.out.println("whatColumn:"+whatColumn+"/keyword:"+keyword);
		this.add2Name = add2Name;
		
		this.pagingHtml = getPagingHtml(url) ; // ������ �ϴ��� ������ ���� �ڵ�鿡 ���� html �ڵ尡 ���ڿ��� ��������� ��ȯ��
	
	}
	
	private String getPagingHtml( String url ){ //����¡ ���ڿ��� �����.
		System.out.println("getPagingHtml url:"+url); // 
		
		String result = "" ;
		String added_param = "&whatColumn=" + whatColumn + "&keyword=" + keyword + "&add2Name=" + add2Name + "&no=" + pno; 
		
		if (this.beginPage != 1) { // ����, pageSize:�� ȭ�鿡 ���̴� ���ڵ� ��
			result += "&nbsp;<a href='" + url  
					+ "?pageNumber=" + ( 1 ) + "&pageSize=" + this.pageSize 
					+ added_param + "'>�� ó��</a>&nbsp;" ;
			result += "&nbsp;<a href='" + url 
					+ "?pageNumber=" + (this.beginPage - 1 ) + "&pageSize=" + this.pageSize 
					+ added_param + "'>����</a>&nbsp;" ;
		}
		
		//���(1,2,3 ������ �����ִ� �ڵ�)
		for (int i = this.beginPage; i <= this.endPage ; i++) {
			if ( i == this.pageNumber ) {
				result += "&nbsp;<font color='red'>" + i + "</font>&nbsp;"	; // ������ ��ȣ�� ���������� ���̰� �ض�
						
			} else {
				// ���߿� result ���� �ѹ� ����غ���. �˻��� ���� ���� 2������ ������ result =  /ex/list.ab/?pageNum=2&pageSize=2&whatColumn=null&keyword=null
				result += "&nbsp;<a href='" + url   
						+ "?pageNumber=" + i + "&pageSize=" + this.pageSize 
						+ added_param + "'>" + i + "</a>&nbsp;" ;
				
			}
		}
		System.out.println("result:"+result);  
		System.out.println();
		
		if ( this.endPage != this.totalPage) { // ����(������ �ǳ��� ���ǿ� ���� ���ü��� �ְ� �ȳ��ü��� �ְ�)
			
			result += "&nbsp;<a href='" + url  
					+ "?pageNumber=" + (this.endPage + 1 ) + "&pageSize=" + this.pageSize 
					+ added_param + "'>����</a>&nbsp;" ;
			
			result += "&nbsp;<a href='" + url  
					+ "?pageNumber=" + (this.totalPage ) + "&pageSize=" + this.pageSize 
					+ added_param + "'>�� ��</a>&nbsp;" ;
		}		
		System.out.println("result2:"+result);
		
		return result ;
	}	
	
}

