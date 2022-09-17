package pro4.vo;

public class TodoSch {
	 
	private int id;
	private int project_no;
	private int todo_no;
	private int empno;
	private String duration;
	private String name;
	private String title;
	private String start;
	private String end;
	private String backgroundColor;
	private String textColor;
	public TodoSch() {
		// TODO Auto-generated constructor stub
	}
	public TodoSch(int id, int project_no, int todo_no, int empno, String duration, String name, String title,
			String start, String end, String backgroundColor, String textColor) {
		this.id = id;
		this.project_no = project_no;
		this.todo_no = todo_no;
		this.empno = empno;
		this.duration = duration;
		this.name = name;
		this.title = title;
		this.start = start;
		this.end = end;
		this.backgroundColor = backgroundColor;
		this.textColor = textColor;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	public int getTodo_no() {
		return todo_no;
	}
	public void setTodo_no(int todo_no) {
		this.todo_no = todo_no;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getBackgroundColor() {
		return backgroundColor;
	}
	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}
	public String getTextColor() {
		return textColor;
	}
	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}
	
}
