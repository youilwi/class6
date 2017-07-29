package class6.company.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.company.dao.CompanyDao;
import class6.company.dto.CompanyDto;
import class6.controller.Action;
import class6.controller.ActionForward;

public class CompanyUpdateFormAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		
		int companyNo = Integer.parseInt(request.getParameter("companyNo"));		
		CompanyDto dto = CompanyDao.getInstance().getData(companyNo);
		
		request.setAttribute("dto", dto);
		return new ActionForward("/views/company/companyUpdateForm.jsp");
	}
}
