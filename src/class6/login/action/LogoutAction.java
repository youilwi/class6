package class6.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;

public class LogoutAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		System.out.println(":: LogoutAction start..");
		
		request.getSession().invalidate();
		
		request.setAttribute("msg", "로그 아웃 되었습니다.");
		request.setAttribute("url", request.getContextPath());
		
		return new ActionForward("/views/alert.jsp");
	}
}
