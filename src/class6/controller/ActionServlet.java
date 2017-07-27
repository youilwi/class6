package class6.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class ActionServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	//. 을 포함한 요청 확장자의 길이
	public static final int INCLUDE_EXTENSION_LENGTH=3;
	
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//요청 URI 읽어오기
		String uri=request.getRequestURI();
		//context name 읽어오기
		String contextName=request.getContextPath();
		//순수 요청 경로를 추출 한다.
		// command => /fortune or /info or /signin or /signout 
		String command=uri.substring(contextName.length(),
				uri.length()-INCLUDE_EXTENSION_LENGTH);
		
		//해당 command 를 수행할 Action 객체를 팩토리로 부터 얻어온다. 
		Action action=
				UserActionFactory.getInstance().action(command);
		
		if(action != null){//처리 가능한 command 라면 
			ActionForward af=null;
			try{
				af=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
				return;
			}
			if(af.isRedirect()){//redirect 이동해야 한다면
				//redirect 이동 시킨다.
				response.sendRedirect(contextName+af.getPath());
			}else{//forward 이동해야 한다면 
				RequestDispatcher rd=
						request.getRequestDispatcher(af.getPath());
				rd.forward(request, response);
			}
		}else{//요청을 처리할 Action 객체가 null 이라면  
			String msg="해당 페이지는 존재 하지 않습니다.";
			request.setAttribute("msg", msg);
			RequestDispatcher rd=
					request.getRequestDispatcher("/views/error.jsp");
			rd.forward(request, response);
		}
	}
}









