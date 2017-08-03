package class6.users.main.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;
import class6.users.dao.UsersDao;
import class6.users.dto.UsersDto;

public class MemberListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
								HttpServletResponse response) {
		// System.out.println(":: MemberListAction start..");
		
		List<UsersDto> list = UsersDao.getInstance().getList();
		request.setAttribute("list", list);
		
		return new ActionForward("/views/users/join/memberList.jsp");
	}
}
