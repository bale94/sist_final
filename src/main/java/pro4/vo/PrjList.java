package pro4.vo;

import java.util.Date;
 
public class PrjList {
	private int project_no;
	private Date sdate;
	private Date edate;
	
	public PrjList() {}
	
	public PrjList(int project_no, Date sdate, Date edate) {
		this.project_no = project_no;
		this.sdate = sdate;
		this.edate = edate;
	}

	public int getProject_no() {
		return project_no;
	}

	public void setProject_no(int project_no) {
		this.project_no = project_no;
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
	
}
