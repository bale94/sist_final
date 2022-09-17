package pro4.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pro4.service.RMService01;
import pro4.vo.AllSchedule;
import pro4.vo.RM01;
import pro4.vo.RMSch;

@Controller
public class RMController01 {
	@Autowired(required=false)
	private RMService01 service;
	// http://localhost:7080/4PRO/RM.do
	
	@RequestMapping("RM.do")
	public String RM01(RMSch sch, Model d,HttpSession session){
		if(session.getAttribute("empno")==null) {
			return "redirect:/login.do";
		}
		int empno = ((int)session.getAttribute("empno"));
		d.addAttribute("memName", service.getMember(empno));
		d.addAttribute("rmlist",service.RMList(sch));
		return "WEB-INF\\views\\RM01\\RMList.jsp";
	}

	//---------------------------------------------
	// http://localhost:7080/4PRO/RMInsertForm.do
	@RequestMapping("RMInsertForm.do")
	public String RMInsertForm(HttpSession session,Model d){
		if(session.getAttribute("empno")==null) {
			return "redirect:/login.do";
		}
		int empno = ((int)session.getAttribute("empno"));
		d.addAttribute("memName",service.getMember(empno));
		return "WEB-INF\\views\\RM01\\RMInsert.jsp";
	}	 
	
	// http://localhost:7080/4PRO/RMInsert.do
	 @RequestMapping("RMInsert.do")
	 public String RMInsert(RM01 ins, Model d) {
		service.RMInsert(ins);
		return "redirect:/RM.do";
	}
	 //------------------------------------
	 
	// http://localhost:7080/4PRO/RMUpdate.do

	@RequestMapping("RMUpdate.do")
	public String RMUpdate(HttpSession session, int RM_no, Model d) {
		
//		d.addAttribute("empno", session.getAttribute("empno"));
		int empno = ((int)session.getAttribute("empno"));
		service.getRM(RM_no);
		d.addAttribute("proc",service.getRM(RM_no));
		d.addAttribute("memName", service.getMember(empno));
		return "WEB-INF\\views\\RM01\\RMUpdate.jsp";
	}
	
	// http://localhost:7080/4PRO/RMUpdateForm.do
	@RequestMapping("RMUpdateForm.do")
	public String RMUpdateForm(RM01 upt, Model d) {
		service.RMUpdateForm(upt);
		d.addAttribute("proc", "upt");
		return "redirect:/RM.do";
	}
	/*
	@RequestMapping("RMUpdate.do")
	public String RM01(HttpServletRequest request,
	 HttpServletResponse response, HttpSession session, RMSch sch, Model d){
	 String auth = service.ckpm((int)session.getAttribute("empno"));
		d.addAttribute("auth",auth);
		if(auth.equals("user")||auth.equals("PM")){
			d.addAttribute("RMUpdate",service.getRMUpdate(sch));
		}else{
			return "WEB-INF\\views\\accessDenied.jsp";
 		}
 		return "WEB-INF\\views\\RM01\\RMUpdate.jsp";
	}
	
	
*/
	//-------------------------------------------------
	
	@RequestMapping("RMDelete.do")
	public String RMDelete(@RequestParam("RM_no") int RM_no, Model d) {
		service.RMDelete(RM_no);
		d.addAttribute("proc", "del");
		return "redirect:/RM.do";
	}
}
