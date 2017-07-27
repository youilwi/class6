package class6.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;
import class6.users.dao.UsersDao;
import class6.users.dto.UsersDto;

public class LoginAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		System.out.println(":: LoginAction start..");
		
		String url = request.getParameter("url");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		UsersDto dto = new UsersDto();
		dto.setUserId(userId);
		dto.setUserPwd(userPwd);

		//1. 아이디 비밀번호가 유효한 정보 인지 확인
		boolean isValid = UsersDao.getInstance().isValid(dto);

		if(isValid){	// 유효한 경우... 로그인 처리를 해준다.			
			request.getSession().setAttribute("userPwd", userPwd);	// session 저장..
			
			request.setAttribute("msg", userPwd+" 님 로그인 되었습니다.");
			request.setAttribute("url", url);
		}else{			// 유효하지 않은 경우 .. 다시 로그인 폼을 보여준다.
			request.setAttribute("msg", "아이디 혹은 비밀번호가 틀려요");
			String location = request.getContextPath()+"/users/login/login_form.do?url="+url;
			request.setAttribute("url", location);
		}
		
		//알림 페이지로 forward 이동
		return new ActionForward("/views/alert.jsp");
	}
}
