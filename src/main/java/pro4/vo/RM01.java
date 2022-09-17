package pro4.vo;

import java.util.Date;

public class RM01{
	private int RM_no;
	private String pname;
	private String tname;
	private String name;
	private String issue;
	private String importance;
	private String progress;
	private Date writeDate;
	private String writeDates;
	private String edates;
	private Date edate;
	private String solution;
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
	public RM01(int rM_no, String pname, String tname, String name, String issue, String importance, String progress,
			Date writeDate, String writeDates, String edates, Date edate, String solution) {
		super();
		RM_no = rM_no;
		this.pname = pname;
		this.tname = tname;
		this.name = name;
		this.issue = issue;
		this.importance = importance;
		this.progress = progress;
		this.writeDate = writeDate;
		this.writeDates = writeDates;
		this.edates = edates;
		this.edate = edate;
		this.solution = solution;
	}
	public String getEdates() {
		return edates;
	}
	public String getWriteDates() {
		return writeDates;
	}
	public void setWriteDates(String writeDates) {
		this.writeDates = writeDates;
	}
	public RM01(int rM_no, String pname, String tname, String name, String issue, String importance, String progress,
			Date writeDate, String writeDates, String edates, Date edate) {
		super();
		RM_no = rM_no;
		this.pname = pname;
		this.tname = tname;
		this.name = name;
		this.issue = issue;
		this.importance = importance;
		this.progress = progress;
		this.writeDate = writeDate;
		this.writeDates = writeDates;
		this.edates = edates;
		this.edate = edate;
	}
	public void setEdates(String edates) {
		this.edates = edates;
	}
	public RM01(int rM_no, String pname, String tname, String name, String issue, String importance, String progress,
			Date writeDate, String edates, Date edate) {
		super();
		RM_no = rM_no;
		this.pname = pname;
		this.tname = tname;
		this.name = name;
		this.issue = issue;
		this.importance = importance;
		this.progress = progress;
		this.writeDate = writeDate;
		this.edates = edates;
		this.edate = edate;
	}
	public RM01(int rM_no, String pname, String tname, String name, String issue, String importance, String progress,
			Date writeDate, Date edate) {
		super();
		RM_no = rM_no;
		this.pname = pname;
		this.tname = tname;
		this.name = name;
		this.issue = issue;
		this.importance = importance;
		this.progress = progress;
		this.writeDate = writeDate;
		this.edate = edate;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	public RM01() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RM01(int rM_no, String pname, String tname, String name, String issue, String importance, String progress) {
		super();
		RM_no = rM_no;
		this.pname = pname;
		this.tname = tname;
		this.name = name;
		this.issue = issue;
		this.importance = importance;
		this.progress = progress;
	}
	public int getRM_no() {
		return RM_no;
	}
	public void setRM_no(int rM_no) {
		RM_no = rM_no;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getImportance() {
		return importance;
	}
	public void setImportance(String importance) {
		this.importance = importance;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	
	
}