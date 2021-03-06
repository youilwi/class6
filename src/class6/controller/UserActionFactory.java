package class6.controller;

import class6.action.HomeAction;
import class6.company.action.CompanyDeleteAction;
import class6.company.action.CompanyInsertAction;
import class6.company.action.CompanyInsertFormAction;
import class6.company.action.CompanyListAction;
import class6.company.action.CompanyUpdateAction;
import class6.company.action.CompanyUpdateFormAction;
import class6.users.join.action.CheckIdFormAction;
import class6.users.join.action.JoinAgreeFormAction;
import class6.users.join.action.UsersJoinAction;
import class6.users.join.action.UsersJoinFormAction;
import class6.users.login.action.LoginAction;
import class6.users.login.action.LoginFormAction;
import class6.users.login.action.LogoutAction;
import class6.users.main.action.MemberDeleteAction;
import class6.users.main.action.MemberInsertAction;
import class6.users.main.action.MemberInsertFormAction;
import class6.users.main.action.MemberListAction;
import class6.users.main.action.MemberUpdateAction;
import class6.users.main.action.MemberUpdateFormAction;

public class UserActionFactory {
	private static UserActionFactory factory;
	
	private UserActionFactory(){}
	
	public static UserActionFactory getInstance(){
		if(factory==null){	// 자신의 참조값을 리턴해주는 메소드
			factory=new UserActionFactory();
		}
		return factory;
	}
	
	// 인자로 전달되는 command 를 수행할 Action type 객체를 리턴해주는 메소드
	public Action action(String command){		
		Action action = null;	// Action 추상클래스 type을 담을 지역변수
		
		if(command.equals("/home")){
			action=new HomeAction();
		}else if(command.equals("/users/join/usersJoinForm")){
			action=new UsersJoinFormAction();
		}else if(command.equals("/users/join/usersJoin")){
			action=new UsersJoinAction();
		}else if(command.equals("/users/join/joinAgreeForm")){
			action=new JoinAgreeFormAction();
		}else if(command.equals("/users/join/checkIdForm")){
			action=new CheckIdFormAction();
		}else if(command.equals("/users/login/loginForm")){
			action=new LoginFormAction();
		}else if(command.equals("/users/login/login")){
			action=new LoginAction();
		}else if(command.equals("/users/login/logout")){
			action=new LogoutAction();
		}else if(command.equals("/company/companyInsertForm")){
			action=new CompanyInsertFormAction();
		}else if(command.equals("/company/companyInsert")){
			action=new CompanyInsertAction();
		}else if(command.equals("/company/companyList")){
			action=new CompanyListAction();
		}else if(command.equals("/company/companyUpdateForm")){
			action=new CompanyUpdateFormAction();
		}else if(command.equals("/company/companyUpdate")){
			action=new CompanyUpdateAction();
		}else if(command.equals("/company/companyDelete")){
			action=new CompanyDeleteAction();
		}else if(command.equals("/member/memberList")){
			action=new MemberListAction();
		}else if(command.equals("/member/memberInsertForm")){
			action=new MemberInsertFormAction();
		}else if(command.equals("/member/memberInsert")){
			action=new MemberInsertAction();
		}else if(command.equals("/member/memberUpdateForm")){
			action=new MemberUpdateFormAction();
		}else if(command.equals("/member/memberUpdate")){
			action=new MemberUpdateAction();
		}else if(command.equals("/member/memberDelete")){
			action=new MemberDeleteAction();
		}
		
		return action;
	}
}
