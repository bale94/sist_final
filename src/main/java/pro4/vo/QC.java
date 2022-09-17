package pro4.vo;

import java.util.Date;
  
public class QC{
	
	private int project_no;
	private String pname;
	private String progress;
	private Date sdate;
	private Date edate;
	private int evaluation;
	public QC() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QC(int project_no, String pname, String progress, Date sdate, Date edate, int evaluation) {
		super();
		this.project_no = project_no;
		this.pname = pname;
		this.progress = progress;
		this.sdate = sdate;
		this.edate = edate;
		this.evaluation = evaluation;
	}
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	public int getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(int evaluation) {
		this.evaluation = evaluation;
	}
	
}
