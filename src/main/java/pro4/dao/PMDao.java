package pro4.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import pro4.vo.PMBoard;
import pro4.vo.PMBoardFile;
import pro4.vo.PMBoardSch;

@Repository
public interface PMDao {
	public int totCnt(PMBoardSch sch);
	public List<PMBoard> pmboardList(PMBoardSch sch);
	public void insertPM(PMBoard pmb);
	public void FileinsertPM(PMBoard pmb);	
	public PMBoard getBoardDetail(int project_no);
	public void readCountup(int project_no);
	public void updateBoard(PMBoard pmb); 
	public void deleteBoard(int project_no);
	public void insertFile(PMBoardFile pmBoardFile);
	public String ckpm(int empno);
}
