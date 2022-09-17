package pro4.vo;
//pro4.vo.Member
public class Member {
	
	private int empno;
	//id=empno로 사용한다. 8월7일 라예지
	private String name;
	private String email;
	private String pass;
	private String auth;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(int empno, String name, String email, String pass, String auth) {
		super();
		this.empno = empno;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.auth = auth;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	
	
	
}