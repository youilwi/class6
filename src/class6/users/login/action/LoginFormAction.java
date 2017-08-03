package class6.users.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;

public class LoginFormAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {		
		System.out.println(":: LoginFormAction start..");
		
		return new ActionForward("/views/users/login/loginForm.jsp");
	}	
}
