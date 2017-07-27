package class6.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/* 
 * 요청한 url Path를 계속 뒤에 달고 다녀야 하는 번거로움을 없앤다.
 * 어노테이션에 설정된 폴더의 파일들은 요청이 들어올 때마다.. 
 * 가로채서 로그인을 확인하고 url을 붙여준다.( 로그인 여부를 자동으로 필터링 )
*/
@WebFilter({"/users/private/*", "/cafe/private/*"})
public class LoginFilter implements Filter{
	@Override
	public void destroy() { }

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, 
			FilterChain chain) throws IOException, ServletException {

		// JSP에서는 session 객체가 기본 객체이지만..
		// 여기서는 HttpServletRequest 얻어와야 사용이 가능해진다.

		// 원래의 HttpServletRequest type 으로 casting
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;

		// HttpSession 객체의 참조값, Context 경로, 원래 요청 uri(url)정보 얻어오기
		HttpSession session = request.getSession();
		String cPath = request.getContextPath();
		String url = request.getRequestURI(); // 원래 있었던 위치로 보낼 url..
		
		// session에 로그인 정보가 있는지 여부를 확인해서..
		if(session.getAttribute("id")==null){
			// 로그인 페이지의 경로를 구성하고.. 로그인 페이지로 이동 시킨다.
			String path = cPath+"/users/signin_form.do?url=" + url;
			response.sendRedirect(path);
		}else{
			// 가로채기 하기전에.. 원래 하려고 했던 작업을 그대로 진행 시키기..
			chain.doFilter(req, res);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
}
