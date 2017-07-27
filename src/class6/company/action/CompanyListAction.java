package class6.company.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.company.dao.CompanyDao;
import class6.company.dto.CompanyDto;
import class6.controller.Action;
import class6.controller.ActionForward;

public class CompanyListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		System.out.println(":: CompanyListAction start..");
		
		List<CompanyDto> list = CompanyDao.getInstance().getList();
		request.setAttribute("list", list);
		
		return new ActionForward("/views/company/companyList.jsp");
	}
}
