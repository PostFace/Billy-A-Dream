package member.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;

public class MemberBean {
	private int mno;
	@NotBlank(message = "���̵� �Է��ϼ���")
	private String id;
	
	@Pattern(regexp ="^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$", message = "�ּ� 8��,�ּ� �ϳ��� ���ڿ� ���ڸ� �Է��ϼ���")
	private String pw;
	
	@NotBlank(message = "�̸��� �Է��ϼ���")
	private String name;
	
	@NotBlank(message = "�ּҸ� �Է��ϼ���")
	private String postcode;
	private String address;
	
	@NotBlank(message = "�ּҸ� �Է��ϼ���")
	private String detailaddress;
	@Pattern(regexp = "^[A-Za-z0-9_\\.\\-]+@[A-Za-z0-9\\-]+\\.[A-Za-z0-9\\-]+" , message = "�ùٸ��� ���� ������ �̸����Դϴ�")
	private String email;
	@Pattern(regexp = "(01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$" , message = "�ùٸ��� ���� ������ ��ȣ�Դϴ�")
	private String hp; // �ڵ�����ȣ
	private String isblacklist; // ������Ʈ
	private int rating;
	
	//��ȿ���˻��� �ٽ� ���� ����
	@NotBlank(message = "��Ȯ�� ��й�ȣ�� �Է��ϼ���")
	private String repw;
	
	
	public String getRepw() {
		return repw;
	}
	public void setRepw(String repw) {
		this.repw = repw;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getIsblacklist() {
		return isblacklist;
	}
	public void setIsblacklist(String isblacklist) {
		this.isblacklist = isblacklist;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	
}
