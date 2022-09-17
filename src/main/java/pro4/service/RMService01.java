package pro4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pro4.dao.RMDao01;
import pro4.vo.MemberSch;
import pro4.vo.RM01;
import pro4.vo.RMSch;

@Service
public class RMService01 {
	@Autowired(required=false)
	private RMDao01 dao;
	/*
	public List<RM01> RMList(RM01 sch){
		return dao.RMList(sch);
	}
	*/
	public List<RM01> RMList(RMSch sch){
		sch.setCount(dao.totCnt(sch));
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		sch.setPageCount( (int)Math.ceil( sch.getCount() /(double)sch.getPageSize()) );
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		if(sch.getCurPage() > sch.getPageCount()){
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
		if(endBlock>sch.getPageCount()) {
			endBlock = sch.getPageCount();
		}
		sch.setEndBlock(endBlock);
		sch.setStartBlock((blocknum-1)*sch.getBlockSize()+1);

		return dao.RMList(sch);
	}
	public void RMInsert(RM01 ins) {
		dao.RMInsert(ins);
	}
	public void RMUpdateForm(RM01 upt) {
		dao.RMUpdateForm(upt);
		
	}
	public RM01 getRMUpdate(int RM_no){
		dao.readCountup(RM_no);
		return dao.getRMUpdateForm(RM_no);
	}
	public RM01 getRM(int RM_no) {
		return dao.getRM(RM_no);
	}
	
	public void RMDelete(int RM_no) {
		dao.RMDelete(RM_no);
	}
/*
	public String ckpm(int empno) {
		return dao.ckpm(empno);
	}
	
	public RMSch getAuth(RMSch sch) {
		return dao.getAuth(sch);
	}


	public String getMemName(int empno) {
		return dao.getMemName(empno);
	}
*/
	public String getMember(int empno) {
		return dao.getMember(empno);
	}
}

 