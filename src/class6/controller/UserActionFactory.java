package class6.controller;

import class6.action.HomeAction;
import class6.company.action.CompanyInsertAction;
import class6.company.action.CompanyInsertFormAction;
import class6.company.action.CompanyListAction;
import class6.join.action.UsersJoinAction;
import class6.join.action.UsersJoinFormAction;
import class6.login.action.LoginAction;
import class6.login.action.LoginFormAction;
import class6.login.action.LogoutAction;

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
		}else if(command.equals("/users/join/memberInsertForm")){
			action=new UsersJoinFormAction();
		}else if(command.equals("/users/join/memberInsert")){
			action=new UsersJoinAction();
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
		}
		
		return action;
	}
}
