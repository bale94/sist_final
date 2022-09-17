package pro4.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pro4.vo.RM01;
import pro4.vo.RMSch;

@Repository
public interface RMDao01 {
	//public List<RM01> RMList(RM01 sch);
	public void RMInsert(RM01 ins);
	public RM01 getRMUpdateForm(int RM_no);
	public void RMUpdateForm(RM01 upt);
	public void readCountup(int RM_no);
	public List<RM01> RMList(RMSch sch);
	public int totCnt(RMSch sch);
	public RM01 getRM(int RM_no);
	public void RMDelete(int RM_no);
	public String getMember(int empno);
	
//	public String getMemName(int empno);
//	public String ckpm(int empno);
//	public RMSch getAuth(RMSch sch);
} 