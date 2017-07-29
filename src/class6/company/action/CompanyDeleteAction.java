package class6.company.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.company.dao.CompanyDao;
import class6.controller.Action;
import class6.controller.ActionForward;

public class CompanyDeleteAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		
		int companyNo = Integer.parseInt(request.getParameter("companyNo"));
		boolean isSuccess = CompanyDao.getInstance().delete(companyNo);
		String msg = "삭제 처리가 실패 되었습니다.";
		if(isSuccess){
			msg = "정상적으로 삭제 처리 했습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", "companyList.do");
		
		return new ActionForward("/views/alert.jsp");
	}
}
