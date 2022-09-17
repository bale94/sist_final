package pro4.vo;

public class AllSchedule {
	private int todo_no;
	private String tname;
	private String progress;
	private int project_no;
	private int empno;
	private String sdate;
	private String edate;
	private String pname;
	private String name;
	private String fname;
	public AllSchedule() {
		// TODO Auto-generated constructor stub
	}
	public AllSchedule(int todo_no, String tname, String progress, int project_no, int empno, String sdate,
			String edate, String pname, String name, String fname) {
		this.todo_no = todo_no;
		this.tname = tname;
		this.progress = progress;
		this.project_no = project_no;
		this.empno = empno;
		this.sdate = sdate;
		this.edate = edate;
		this.pname = pname;
		this.name = name;
		this.fname = fname;
	}
	public int getTodo_no() {
		return todo_no;
	}
	public void setTodo_no(int todo_no) {
		this.todo_no = todo_no;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
}
