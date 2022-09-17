package pro4.vo;

public class Todo {
	 
	private int todo_no;
	private String tname;
	private int project_no;
	private int empno;
	public Todo() {
		// TODO Auto-generated constructor stub
	}
	public Todo(int todo_no, String tname, int project_no, int empno) {
		this.todo_no = todo_no;
		this.tname = tname;
		this.project_no = project_no;
		this.empno = empno;
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
	
	
}
