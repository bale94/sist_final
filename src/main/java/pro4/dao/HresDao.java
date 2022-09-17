package pro4.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pro4.vo.Member;
import pro4.vo.MemberSch;
import pro4.vo.TeamMember;


@Repository
public interface HresDao {
	public int totCnt(MemberSch sch);
	public List<Member> hresList(MemberSch sch);
	public Member getHresDetail(int empno);
	public void hresUptAuth(Member upt);
	
	public int prjCnt(MemberSch sch);
	public List<TeamMember> hresPrjList(MemberSch sch);
	public TeamMember getProjMemDetail(int empno);
	public TeamMember hresProjUpt(TeamMember upt);
	public void hresProjInsert(TeamMember ins);
	
	public Member getMember(int empno);
	public void uptMember(Member upt);
	
	public void delProjMem(TeamMember del);
	
	public MemberSch getAuth(MemberSch sch);
	
	public int checkTeam(int empno);

	public String ckpm(int empno);
	
	public int empnock(int empno);
	
}
