package pro4.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pro4.service.CMService;
import pro4.vo.Member;
import pro4.vo.Minutes;

@Controller
public class CMController {
	
	@Autowired(required = false)
	private CMService service;
	
	//http://localhost:7080/4PRO/login.do
	
	@RequestMapping("directMessage.do")
	private String directMessage(HttpSession session, Model m) {
		int empno = ((int) session.getAttribute("empno"));
		m.addAttribute("member", service.getMemName(empno));
		return "WEB-INF\\views\\cm\\directMessage.jsp";
	}
	
	@RequestMapping("searchMember.do")
	public String searchMember(Member memSch, Model m) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", memSch.getName());
		m.addAttribute("memberList", service.searchMember(map));
		return "pageJsonReport";
	}

	@RequestMapping("minutes.do")
	private String minutes(Model m) {
		m.addAttribute("prjList", service.getPrjList());
		return "WEB-INF\\views\\cm\\mm\\minutes.jsp";
	}

	@RequestMapping("minutesList.do")
	private String minutesList(@RequestParam("project_no") int project_no, Model m) {
		m.addAttribute("prj", service.getPrjInfo(project_no));
		m.addAttribute("minutesList", service.getMinutesList(project_no));
		return "WEB-INF\\views\\cm\\mm\\minutesList.jsp";
	}
	
	@RequestMapping("minutesMailForm.do")
	public String minutesMailForm() {
		return "WEB-INF\\views\\cm\\mm\\minutesList.jsp";
	}

	@RequestMapping("sendMinutesMail.do")
	public String sendMinutesMail(@RequestParam("project_no") int project_no, Minutes mntMail, Model m) {
		m.addAttribute("project_no", project_no);
		m.addAttribute("msg", service.senderMail(mntMail));
		return "WEB-INF\\views\\cm\\mm\\minutesList.jsp";
	}

	@RequestMapping("regMinutesForm.do")
	private String regMinutesForm(HttpSession session, @RequestParam("project_no") int project_no, Model m) {
		int empno = ((int) session.getAttribute("empno"));
		m.addAttribute("empno", empno);
		m.addAttribute("prj", service.getPrjInfo(project_no));
		return "WEB-INF\\views\\cm\\mm\\regMinutes.jsp";
	}

	@RequestMapping("regMinutes.do")
	private String regMinutes(@RequestParam("project_no") int project_no, Minutes mntReg, Model m) {
		service.regMinutes(mntReg);
		m.addAttribute("isRegistered", "Y");
		m.addAttribute("project_no", project_no);
		return "WEB-INF\\views\\cm\\mm\\regMinutes.jsp";
	}

	@RequestMapping("uptMinutesForm.do")
	private String uptMinutes(@RequestParam("minutes_no") int minutes_no, Model m) {
		m.addAttribute("minutes", service.getMinutes(minutes_no));
		return "WEB-INF\\views\\cm\\mm\\uptMinutes.jsp";
	}
	
	@RequestMapping("uptMinutes.do")
	private String uptMinutes(Minutes mntUpt, Model m) {
		service.uptMinutes(mntUpt); 
		m.addAttribute("isUpdated", "Y");
		return "WEB-INF\\views\\cm\\mm\\uptMinutes.jsp";
	}

	@RequestMapping("delMinutes.do")
	private String delMinutes(@RequestParam("minutes_no") int minutes_no, 
							  @RequestParam("project_no") int project_no, Model m) {
		service.delMinutes(minutes_no);
		m.addAttribute("isDeleted", "Y");
		m.addAttribute("project_no", project_no);
		return "WEB-INF\\views\\cm\\mm\\minutesList.jsp";
	}
	
}
