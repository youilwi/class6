package class6.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import class6.company.dto.CompanyDto;
import class6.mybatis.SqlMapConfig;

public class CompanyDao {
	private static CompanyDao dao;
	private static SqlSessionFactory factory;
	private CompanyDao(){}
	
	public static CompanyDao getInstance(){
		if(dao == null){
			dao = new CompanyDao();
			factory = SqlMapConfig.getSqlSession();
		}
		return dao;
	}

	public void insert(CompanyDto dto){
		SqlSession session = factory.openSession(true);
		try{
			session.insert("company.insert", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}	
	}//insert()
	
	public void update(CompanyDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.insert("company.update", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	
	public void delete(int num){
		SqlSession session=factory.openSession(true);
		try{
			session.insert("company.delete", num);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	
	public List<CompanyDto> getList(){
		SqlSession session=factory.openSession();
		 List<CompanyDto> list=null;
		try{
			list = session.selectList("company.getList");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}// getList()

	public CompanyDto getData(int num){
		SqlSession session=factory.openSession();
		CompanyDto dto=null;
		try{
			dto=session.selectOne("company.getData", num);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return dto;
	}// getData()
	
	public int getCount(){
		SqlSession session=factory.openSession();
		int count = 0;
		try{
			count = session.selectOne("company.count");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return count;
	}
	
	// 인자로 전달되는 아이디로 가입할수 있는지 여부를 리턴해주는 메소드
	public boolean canUseName(String name){		
		SqlSession session=factory.openSession();
		String result=null;
		try{
			result=session.selectOne("company.isExistId", name);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}

		if(result==null){	//result가 null이면 사용가능한 회사이름. 
			return true;
		}else{
			return false;
		}
	}// canUsedId()
}
