package pro4.vo;

import org.springframework.web.multipart.MultipartFile;

public class PMBoard {

private int cnt;

private int level;
private int refno;	
private int project_no;
private String pcategory;
private int progress;
private String pname;
private String content;
private int readcnt;
private String auth;
private String name;
//컨테이너 선언 + 화면단 <input type="file" name="report"
	private MultipartFile report;
	private String fname;

	
public PMBoard() {
	super();
	// TODO Auto-generated constructor stub
}

public PMBoard(String pcategory, String pname, String content, int progress, String auth, String name) {
	
	this.pcategory = pcategory;
	this.pname = pname;
	this.content = content;
	this.progress = progress;
	this.auth = auth;
	this.name = name;
}

public int getCnt() {
	return cnt;
}

public void setCnt(int cnt) {
	this.cnt = cnt;
}
public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public int getLevel() {
	return level;
}

public void setLevel(int level) {
	this.level = level;
}

public int getRefno() {
	return refno;
}

public void setRefno(int refno) {
	this.refno = refno;
}

public int getProject_no() {
	return project_no;
}

public void setProject_no(int project_no) {
	this.project_no = project_no;
}

public String getPcategory() {
	return pcategory;
}

public void setPcategory(String pcategory) {
	this.pcategory = pcategory;
}

public int getProgress() {
	return progress;
}

public void setProgress(int progress) {
	this.progress = progress;
}

public String getPname() {
	return pname;
}

public void setPname(String pname) {
	this.pname = pname;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}
public int getReadcnt() {
	return readcnt;
}

public void setContent(int readcnt) {
	this.readcnt = readcnt;
}
public MultipartFile getReport() {
	return report;
}
public void setReport(MultipartFile report) {
	this.report = report;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getAuth() {
	return auth;
}
public void setAuth(String auth) {
	this.auth = auth;
}




}
