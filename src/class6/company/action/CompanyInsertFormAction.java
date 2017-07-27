package class6.company.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;

public class CompanyInsertFormAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		System.out.println(":: CompanyInsertFormAction start..");
		
		return new ActionForward("/views/company/companyInsertForm.jsp");
	}
}
