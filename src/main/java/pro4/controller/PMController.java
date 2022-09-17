package pro4.controller;





import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pro4.service.PMService;
import pro4.vo.PMBoard;
import pro4.vo.PMBoardSch;
@Controller
public class PMController {
	@Autowired(required=false)
	private PMService service;
	
	//기본 컨트롤러
		// 프로젝트 관리 컨트롤러
	// 세션 임포트 유무에 따라 접속 여부가 다르다
		// http://localhost:7080/4PRO/PM.do
		
//		@RequestMapping("PM.do")
//		public String PM(PMBoardSch sch, Model d) {
//			d.addAttribute("blist",service.pmboardList(sch));
			//게시판 나타낼 리스트 필요
//			return "WEB-INF\\views\\FileManagement\\PMMain.jsp";
//		}
	
	
		
	
	
	//로그인 컨트롤러 // http://localhost:7080/4PRO/login.do
	// 세션 추가
	//http://49.236.178.36:7080/4PRO/login.do
		// http://localhost:7080/4PRO/PM.do
		@RequestMapping("PM.do")
		public String PM(PMBoardSch sch, Model d,HttpSession session,
				HttpServletRequest request, HttpServletResponse response) {
			String auth = service.ckpm((int)session.getAttribute("empno"));
			d.addAttribute("auth",auth);
			
				if(auth.equals("pm")) { //여기까진 인식함
					d.addAttribute("blist",service.pmboardList(sch));
				}else if(auth.equals("ceo")||auth.equals("ceo")){
					d.addAttribute("blist",service.pmboardList(sch));
					//return "WEB-INF\\views\\FileManagement\\PMMain2.jsp";
				}else if(auth.equals("admin")){
					d.addAttribute("blist",service.pmboardList(sch));
				}else if(auth.equals("user")){
					d.addAttribute("blist",service.pmboardList(sch));
				}else{
					return "WEB-INF\\views\\Hres\\accessDenied.jsp";

				}
				
			return "WEB-INF\\views\\FileManagement\\PMMain.jsp";
		}
		  		
//		if(auth.equals("ceo")){
//			d.addAttribute("pmList",service.pmboardList(sch));
//			return "WEB-INF\\views\\FileManagement\\PMMain2.jsp";
	
//-----------CRUD, 상세,api,대시보드 화면단 컨트롤러----------------------------------------		
		// http://localhost:7080/4PRO/PMdash.do
		@RequestMapping("PMdash.do")
		public String pmdash(PMBoardSch sch, Model d) {
			d.addAttribute("blist",service.pmboardList(sch));
			return "WEB-INF\\views\\FileManagement\\PMdash.jsp";
		}
		
		//api
		// http://localhost:7080/4PRO/test.do
		@RequestMapping("test.do")
		public String test() {
			return "WEB-INF\\views\\FileManagement\\test2.jsp";
		}
		//------------------------------------
		
		
		@RequestMapping("boardInsertForm.do")
		public String boardInsertForm(){
			return "WEB-INF\\views\\FileManagement\\InsertPM1.jsp";
		}	 
		// http://localhost:7080/4PRO/InsertPM.do
		 @RequestMapping("InsertPM.do")
		 public String InsertPM(PMBoard pmb, Model d) {
					service.FileinsertPM(pmb);
					
					d.addAttribute("isInsert","Y");
					d.addAttribute("proc", "pmb");
					
					return "WEB-INF\\views\\FileManagement\\InsertPM1.jsp";
					
				}
		
		 //----------------------------------------------------------------
		 
		 
		 
		 /*
		 @RequestMapping("selectPM.do")
		 public String selectPM(@RequestParam("project_no") int project_no, Model d){
			 d.addAttribute("pmboard",service.getBoardDetail(project_no));
			 
			 return "WEB-INF\\views\\FileManagement\\selectPM.jsp";
		 }
		 //----------------------------------------------------------------
		/*
		  @RequestMapping("boardDetail.do")
			public String boardDetail(@RequestParam("no") int no, Model d){
				d.addAttribute("board",service.getBoardDetail(no));
				
				return "WEB-INF\\views\\FileManagement\\UpdatePM1.jsp";
			} 
		 
		 */
		 @RequestMapping("updatePM1.do")
		 public String updatePM1(@RequestParam("project_no") int project_no, Model d) {
			 d.addAttribute("pmboard",service.getBoardDetail(project_no));
			 return "WEB-INF\\views\\FileManagement\\UpdatePM1.jsp";
		 }
		 @RequestMapping("selectPM.do")
		 public String selectPM(@RequestParam("project_no") int project_no, Model d){
			 d.addAttribute("pmboard",service.getBoardDetail(project_no));
			 
			 return "WEB-INF\\views\\FileManagement\\selectPM.jsp";
		 }
		 
		 @RequestMapping("updateBoard.do")
		 public String updateBoard(PMBoard pmb, Model d) {
			 System.out.println("수정:"+pmb.getPname());
			 d.addAttribute("pmboard", service.updateBoard(pmb));
			 d.addAttribute("proc", "pmb");
			 return "WEB-INF\\views\\FileManagement\\UpdatePM1.jsp";
		 }
		 
		 @RequestMapping("deleteBoard.do")
			public String deleteBoard(@RequestParam("project_no") int project_no, Model d) {
				System.out.println("삭제:"+project_no);
				service.deleteBoard(project_no);
				d.addAttribute("proc", "del");
				return "WEB-INF\\views\\FileManagement\\UpdatePM1.jsp";
			}	
		 
		 
//---------------파일관리-----------------------------------------		 
		// http://localhost:7080/4PRO/FM.do
		@RequestMapping("FM.do")
		public String FM(PMBoardSch sch, Model d) {
		d.addAttribute("blist",service.pmboardList(sch));
			return "WEB-INF\\views\\FileManagement\\FilePage.jsp";	
		}
		 @RequestMapping("downloadfile.do")	
		 public String downloadfile(@RequestParam("project_no") int project_no, Model d) {
			 d.addAttribute("pmboard",service.getBoardDetail(project_no));
			 return "WEB-INF\\views\\FileManagement\\download.jsp";
		 }	
		 
		 @RequestMapping("FileInsertPM.do")
		 public String FileInsertPM(PMBoard pmb, Model d ) {
			 service.FileinsertPM(pmb);
			 System.out.println("pmb : "+pmb);			 
			 d.addAttribute("isInsert","Y");
			 d.addAttribute("proc", "pmb");
			 
			 return "WEB-INF\\views\\FileManagement\\FilePage.jsp";
			 
		 }
		 
	
//		 @RequestMapping("InsertPM.do")
//		 public String InsertPM(PMBoard pmb, Model d) {
//					service.insertPM(pmb);
//					d.addAttribute("isInsert","Y");
//					d.addAttribute("proc", "pmb");
					
//					return "WEB-INF\\views\\FileManagement\\InsertPM1.jsp";
					
//				}	
				
//		 @RequestMapping("uploadfile.do")
//		 public String uploadfile(@RequestParam("project_no") int project_no, Model d) {
//			 d.addAttribute("pmboard",service.getBoardDetail(project_no));
//			 return "WEB-INF\\views\\FileManagement\\upload.jsp";
//		 }	
			
				
				
}
