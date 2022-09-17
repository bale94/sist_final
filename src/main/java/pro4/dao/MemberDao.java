package pro4.dao;



import java.util.List;

import org.springframework.stereotype.Repository;

import pro4.vo.Member;



//pro4.dao.MemberDao
@Repository
public interface MemberDao {
	
	
	public int checkMember(String id);
	public Member getMember(int empno);
	public void insert4pro(Member ins);
	public int getEmpno();
	
	
	
	public List<Member> getLoginList(Member sch);
	public Member ck(Member sch);
	
	public void uptTemPass(Member upt);
	
	public String ckpm2(int empno);

	
	
 
}
