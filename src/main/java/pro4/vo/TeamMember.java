package pro4.vo;

 
// 
public class TeamMember {
	private int empno;
	private String name;
	private String email;
	private String auth;
	private int project_no;
	private int count;
	public TeamMember() {
		// TODO Auto-generated constructor stub
	}
	public TeamMember(int empno, String name, String email, String auth, int project_no) {
		this.empno = empno;
		this.name = name;
		this.email = email;
		this.auth = auth;
		this.project_no = project_no;
	}
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	
	
}
