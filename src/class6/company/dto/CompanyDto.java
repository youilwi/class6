package class6.company.dto;

public class CompanyDto {
	private int companyNo;			// 회사 번호
	private String companyName;		// 회사 이름
	private String companyAddr;		// 회사 주소
	private String companyCeo;		// 대표자 이름
	private String ceoPhone;		// 회사 전화번호
	private String refDate;			// 등록 일자
	
	public CompanyDto(){}
	
	public CompanyDto(int companyNo, String companyName, String companyAddr, 
			String companyCeo, String ceoPhone, String refDate) {
		super();
		this.companyNo = companyNo;
		this.companyName = companyName;
		this.companyAddr = companyAddr;
		this.companyCeo = companyCeo;
		this.ceoPhone = ceoPhone;
		this.refDate = refDate;
	}
	
	public int getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyAddr() {
		return companyAddr;
	}
	public void setCompanyAddr(String companyAddr) {
		this.companyAddr = companyAddr;
	}
	public String getCompanyCeo() {
		return companyCeo;
	}
	public void setCompanyCeo(String companyCeo) {
		this.companyCeo = companyCeo;
	}
	public String getCeoPhone() {
		return ceoPhone;
	}
	public void setCeoPhone(String ceoPhone) {
		this.ceoPhone = ceoPhone;
	}
	public String getRefDate() {
		return refDate;
	}
	public void setRefDate(String refDate) {
		this.refDate = refDate;
	}
}
