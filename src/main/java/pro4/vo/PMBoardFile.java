package pro4.vo;


// board.vo.BoardFile
public class PMBoardFile {
	private int project_no;
	private String path;
	private String fname;
	private String etc;
	
	
	public PMBoardFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PMBoardFile(String path, String fname) {
		super();
		this.path = path;
		this.fname = fname;
	}
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}


}
