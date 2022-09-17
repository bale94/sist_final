package pro4.vo;

 
public class Team {
	
	private int empno;
	private int project_no;
	public Team() {
		// TODO Auto-generated constructor stub
	}
	public Team(int empno, int project_no) {
		this.empno = empno;
		this.project_no = project_no;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	
	
}
