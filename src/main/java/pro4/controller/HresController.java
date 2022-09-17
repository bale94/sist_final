package pro4.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

import pro4.service.HresService;
import pro4.vo.Member;
import pro4.vo.MemberSch;
import pro4.vo.TeamMember;

@Controller
public class HresController {

	@Autowired(required=false)
	private HresService service;
	
	@Autowired(required=false)
	private LocaleResolver localResolver;
	
	// 사원정보조회 화면단
	// http://localhost:7080/4PRO/hresList.do
	@RequestMapping("hresList.do")
	public String hresList(@RequestParam(value="lang", defaultValue="") String lang,
			HttpServletRequest request, HttpServletResponse response, MemberSch sch, Model d, HttpSession session) {
		String auth = service.ckpm((int)session.getAttribute("empno"));
		d.addAttribute("auth", auth);
		if(auth.equals("admin")||auth.equals("ceo")) {
			d.addAttribute("hresList", service.hresList(sch));
		}else {
			return "WEB-INF\\views\\Hres\\accessDenied.jsp";
		}
		
		System.out.println("선택한언어:"+lang);
		if(lang=="") {
			lang = "ko";
		}
		Locale locale = new Locale(lang);
		localResolver.setLocale(request, response, locale);
		return "WEB-INF\\views\\Hres\\HresList.jsp";
	}
	// http://localhost:7080/4PRO/getHresDetail.do
	@RequestMapping("getHresDetail.do")
	public String getHresDetail(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("member", service.getHresDetail(empno));
		return "WEB-INF\\views\\Hres\\HresUpt.jsp";
	}
	// http://localhost:7080/4PRO/hresUptAuth.do
	@RequestMapping("hresUptAuth.do")
	public String hresUptAuth(Member upt, Model d) {
		//d.addAttribute("member", service.hresUptAuth(upt));
		service.hresUptAuth(upt);
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\Hres\\HresUpt.jsp";
	}
	
	// 프로젝트별정보조회 화면단
	// http://localhost:7080/4PRO/hresPrjList.do
	@RequestMapping("hresPrjList.do")
	public String hresPrjList(HttpServletRequest request, HttpServletResponse response, MemberSch sch, Model d, HttpSession session) {
		String auth = service.ckpm((int)session.getAttribute("empno"));
		d.addAttribute("auth", auth);
		if(auth.equals("admin")||auth.equals("ceo")) {
			d.addAttribute("hresPrjList", service.hresPrjList(sch));
		}else {
			return "WEB-INF\\views\\Hres\\accessDenied.jsp";
		}
		
		return "WEB-INF\\views\\Hres\\HresProj.jsp";
	}
	
	// http://localhost:7080/4PRO/getProjMemDetail.do
	@RequestMapping("getProjMemDetail.do")
	public String getProjMemDetail(@RequestParam("empno") int empno, Model d) {
		d.addAttribute("teammember", service.getProjMemDetail(empno));
		return "WEB-INF\\views\\Hres\\HresProjUpt.jsp";
	}
	// http://localhost:7080/4PRO/delProjMem.do
	@RequestMapping("delProjMem.do")
	public String delProjMem(TeamMember del, Model d) {
		service.delProjMem(del);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\Hres\\HresProj.jsp";
	}
	
	// http://localhost:7080/4PRO/hresInsertForm.do
	@RequestMapping("hresInsertForm.do")
	public String hresInsertForm(){
		return "WEB-INF\\views\\Hres\\HresProjInsert.jsp";
	}
	
	@RequestMapping("hasProj.do")
	public String hasProj(@RequestParam("empno")int empno, Model d) {
		d.addAttribute("hasProj", service.empnock(empno));
		return "pageJsonReport";
	}
	@RequestMapping("hresProjInsert.do")
	public String hresProjInsert(TeamMember ins, Model d){
		
		service.hresProjInsert(ins);
		d.addAttribute("proc", "ins");
		return "WEB-INF\\views\\Hres\\HresProjInsert.jsp";
	}
	
	
	// http://localhost:7080/4PRO/hresInfo.do
	@RequestMapping("hresInfo.do")
	public String hresInfo(HttpSession session, Model d) {
		d.addAttribute("empno", session.getAttribute("empno"));
		int empno = ((int) session.getAttribute("empno"));
		d.addAttribute("member", service.getMember(empno));
		return "WEB-INF\\views\\Hres\\HresInfo.jsp";
	}
	@RequestMapping("hresUptInfo.do")
	public String hresUptInfo(Member upt, Model d) {
		d.addAttribute("empno", upt.getEmpno());
		d.addAttribute("member", service.uptMember(upt));
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\Hres\\HresInfo.jsp";
	}
}
