package class6.company.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.company.dao.CompanyDao;
import class6.company.dto.CompanyDto;
import class6.controller.Action;
import class6.controller.ActionForward;

public class CompanyInsertAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		System.out.println(":: CompanyInsertAction start..");
		
		CompanyDto dto = new CompanyDto();
		dto.setCompanyName(request.getParameter("companyName"));
		dto.setCompanyAddr(request.getParameter("companyAddr"));
		dto.setCompanyCeo(request.getParameter("companyCeo"));
		dto.setCeoPhone(request.getParameter("ceoPhone"));
		CompanyDao.getInstance().insert(dto);
		
		request.setAttribute("msg", "회사가 등록 되었습니다.");
		request.setAttribute("url", request.getContextPath());		
		
		return new ActionForward("/views/alert.jsp");
	}
}
