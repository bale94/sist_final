package pro4.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import pro4.vo.Member;
import pro4.vo.Minutes;
import pro4.vo.Project;

@Repository
public interface CMDao {
	
	public List<Project> getPrjList();
	
	public Project getPrjInfo(int project_no);
	
	public List<Minutes> getMinutesList(int project_no);
	
	public Minutes getMinutes(int minutes_no);
	
	public void regMinutes(Minutes mntReg);
	
	public void uptMinutes(Minutes mntUpt);
	
	public void delMinutes(int minutes_no);
	
	public String getMemName(int empno);
	
	public List<Member> searchMember(Map map);
	
}
