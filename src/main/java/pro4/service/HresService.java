package pro4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pro4.dao.HresDao;
import pro4.vo.Member;
import pro4.vo.MemberSch;
import pro4.vo.TeamMember;

@Service
public class HresService {
	@Autowired(required = false)
	private HresDao dao;
	
	public List<Member> hresList(MemberSch sch){
		
		sch.setCount(dao.totCnt(sch));
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		sch.setPageCount((int)Math.ceil(sch.getCount()/(double)sch.getPageSize()));
		
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		if(sch.getCurPage()>sch.getPageCount()) {
			sch.setCurPage(sch.getPageCount());
		}
		int end = sch.getCurPage()*sch.getPageSize();
		if(end>sch.getCount()) {
			sch.setEnd(sch.getCount());
		}else {
			sch.setEnd(end);
		}
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		sch.setBlockSize(5);
		int blocknum = (int)(Math.ceil(sch.getCurPage()/(double)sch.getBlockSize()));
		
		int endBlock = blocknum*sch.getBlockSize();
		if(endBlock > sch.getPageCount()) {
			endBlock = sch.getPageCount();
		}
		sch.setEndBlock(endBlock);
		sch.setStartBlock((blocknum-1)*sch.getBlockSize()+1);
		
		
		return dao.hresList(sch);
	}
	public Member getHresDetail(int empno) {
		
		return dao.getHresDetail(empno);
	}
	public void hresUptAuth(Member upt) {
		dao.hresUptAuth(upt);
		//return dao.getHresDetail(upt.getEmpno());
	}
	
	public List<TeamMember> hresPrjList(MemberSch sch){
		sch.setCount(dao.prjCnt(sch));
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		sch.setPageCount((int)Math.ceil(sch.getCount()/(double)sch.getPageSize()));
		
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		if(sch.getCurPage()>sch.getPageCount()) {
			sch.setCurPage(sch.getPageCount());
		}
		int end = sch.getCurPage()*sch.getPageSize();
		if(end>sch.getCount()) {
			sch.setEnd(sch.getCount());
		}else {
			sch.setEnd(end);
		}
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		sch.setBlockSize(5);
		int blocknum = (int)(Math.ceil(sch.getCurPage()/(double)sch.getBlockSize()));
		
		int endBlock = blocknum*sch.getBlockSize();
		if(endBlock > sch.getPageCount()) {
			endBlock = sch.getPageCount();
		}
		sch.setEndBlock(endBlock);
		sch.setStartBlock((blocknum-1)*sch.getBlockSize()+1);
		
		
		return dao.hresPrjList(sch);
	}
	public TeamMember getProjMemDetail(int empno) {
		
		return dao.getProjMemDetail(empno);
	}
	
	public TeamMember hresProjUpt(TeamMember upt) {
		
		return dao.hresProjUpt(upt);
	}
	public void hresProjInsert(TeamMember ins) {
		dao.hresProjInsert(ins);
	}
	
	
	public Member getMember(int empno) {
		return dao.getMember(empno);
	}
	public Member uptMember(Member upt) {
		dao.uptMember(upt);
		return dao.getMember(upt.getEmpno());
	}
	public void delProjMem(TeamMember del) {
		dao.delProjMem(del);
	}
	
	public MemberSch getAuth(MemberSch sch) {
		return dao.getAuth(sch);
	}
	public int checkTeam(int empno) {
		return dao.checkTeam(empno);
	}

	public String ckpm(int empno) {
		return dao.ckpm(empno);
	}
	
	public int empnock(int empno) {
		return dao.empnock(empno);
	}

}
