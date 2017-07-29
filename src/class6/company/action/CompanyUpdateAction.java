package class6.company.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.company.dao.CompanyDao;
import class6.company.dto.CompanyDto;
import class6.controller.Action;
import class6.controller.ActionForward;

public class CompanyUpdateAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		
		int companyNo = Integer.parseInt(request.getParameter("companyNo"));
		String companyName = request.getParameter("companyName");
		String companyAddr = request.getParameter("companyAddr");
		String companyCeo = request.getParameter("companyCeo");
		String ceoPhone = request.getParameter("ceoPhone");
		
		CompanyDto dto = new CompanyDto();
		dto.setCompanyNo(companyNo);
		dto.setCompanyName(companyName);
		dto.setCompanyAddr(companyAddr);
		dto.setCompanyCeo(companyCeo);
		dto.setCeoPhone(ceoPhone);
		
		CompanyDao.getInstance().update(dto);
		
		// JSP에게 요청을 위임할 때는 '~.jsp'를 넣어서 위임하고..
		// Servlet이 직접 요청을 처리할 때는 '~.do'로 처리한다.
		return new ActionForward("/company/companyList.do", true);
	}
}
