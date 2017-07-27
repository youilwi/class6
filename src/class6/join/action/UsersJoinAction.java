package class6.join.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;
import class6.users.dao.UsersDao;
import class6.users.dto.UsersDto;

public class UsersJoinAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		System.out.println(":: UsersJoinAction start..");
		
		String userId=request.getParameter("userId");
		String userPwd=request.getParameter("userPwd");
		String userName=request.getParameter("userName");
		String userPhone=request.getParameter("userPhone");
		String userEmail=request.getParameter("userEmail");
		
		UsersDto dto=new UsersDto();
		
		dto.setUserId(userId);
		dto.setUserName(userPwd);
		dto.setUserPwd(userName);
		dto.setUserPhone(userPhone);
		dto.setUserEmail(userEmail);
		
		UsersDao.getInstance().insert(dto);
		
		request.setAttribute("msg", userName+" 회원님 가입 되었습니다.");
		request.setAttribute("url", request.getContextPath());
		
		
		return new ActionForward("/views/alert.jsp");
	}
}
