package class6.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import class6.controller.Action;
import class6.controller.ActionForward;

/*
 *  대문 페이지(index 페이지) 를 출력해주는 액션 클래스 정의하기 
 */
public class HomeAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		//공지사항을 DB 에서 읽어왔다고 가정하자
		List<String> info=new ArrayList<>();
		info.add("오늘은 2017년 7월 16일(수) 입니다.");
		info.add("장마철인데도 오늘은 날씨가 좋아요!");
		info.add("스프링을 배우는데 프로젝트는 MVC로 하고 있네요.");
		info.add("로그인부터 회원의 레벨 관리까지 마무리를 해 봅시다.");
		//request 에 담고
		request.setAttribute("info", info);
		
		// index 페이지를 출력할 뷰 페이지로 forward 이동
		return new ActionForward("/views/home.jsp");
	}

}
















