 package pro4.vo;

import java.util.Date;

public class Minutes {
	
	private int minutes_no;
	private String subject;
	private String contents;
	private String decision;
	private Date mdate;
	private String mdateS;
	private Date wdate;
	private String wdateS;
	private String attendees;
	
	private int project_no;
	private int empno;
	private String name;

	private Project project;
	private PrjList prjList;
	
	private String receiver;
	private String sender;
	
	public Minutes() {}

	public Minutes(int minutes_no, String subject, String contents, String decision, Date mdate, String mdateS,
			Date wdate, String wdateS, String attendees, int project_no, int empno, String name,
			Project project, PrjList prjList, String receiver, String sender) {
		this.minutes_no = minutes_no;
		this.subject = subject;
		this.contents = contents;
		this.decision = decision;
		this.mdate = mdate;
		this.mdateS = mdateS;
		this.wdate = wdate;
		this.wdateS = wdateS;
		this.attendees = attendees;
		this.project_no = project_no;
		this.empno = empno;
		this.name = name;
		this.project = project;
		this.prjList = prjList;
		this.receiver = receiver;
		this.sender = sender;
	}

	public int getMinutes_no() {
		return minutes_no;
	}

	public void setMinutes_no(int minutes_no) {
		this.minutes_no = minutes_no;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDecision() {
		return decision;
	}

	public void setDecision(String decision) {
		this.decision = decision;
	}

	public Date getMdate() {
		return mdate;
	}

	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}

	public String getMdateS() {
		return mdateS;
	}

	public void setMdateS(String mdateS) {
		this.mdateS = mdateS;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getWdateS() {
		return wdateS;
	}

	public void setWdateS(String wdateS) {
		this.wdateS = wdateS;
	}

	public String getAttendees() {
		return attendees;
	}

	public void setAttendees(String attendees) {
		this.attendees = attendees;
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

	public int getProject_no() {
		return project_no;
	}
	
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public PrjList getPrjList() {
		return prjList;
	}

	public void setPrjList(PrjList prjList) {
		this.prjList = prjList;
	}
	

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}
	
}
