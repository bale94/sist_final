package pro4.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import pro4.service.MemberService;
import pro4.vo.Member;
import pro4.vo.MemberSch;


@SuppressWarnings("unused")
@Controller
public class LoginController {
	@Autowired(required = false)
	private MemberService service;
	

	// 로그인페이지호출
	// http://localhost:7080/4PRO/login.do
	@RequestMapping("login.do")
	public String login() {
		return "WEB-INF\\views\\Member\\Login.jsp"; // login.jsp
	} 
	
	//로그인체크
	@RequestMapping("login2.do")
	public String loginList(HttpServletRequest request, Member sch, Model d) {
		HttpSession session = request.getSession();
		if(service.getLoginList(sch) != null) {
			if(service.ck(sch) != null) { // 사원번호와 비밀번호가 맞을 경우
				System.out.println(sch.getEmpno());
				System.out.println(sch.getPass());
				session.setAttribute("empno", sch.getEmpno());
				session.setAttribute("pass", sch.getPass());
				session.setAttribute("auth", sch.getAuth());
				session.setMaxInactiveInterval(1800); // 세션타임아웃설정 30분 설정
				d.addAttribute("loginYN","Y");
			}else { // 사원번호와 비밀번호가 맞지 않음
				d.addAttribute("loginYN","N");
			}
			
		}
		d.addAttribute("loginList",service.getLoginList(sch));   
		return "WEB-INF\\views\\Member\\Login.jsp";

	}
	//로그아웃
	   @RequestMapping("logout.do")
	   public String logout(HttpServletRequest request) {
	      HttpSession session = request.getSession();
	      session.invalidate();
	      return "redirect:/login.do";
	   }
	   

	// http://localhost:7080/4PRO/goDS.do
	@RequestMapping("goDS.do")
	public String goDS(HttpSession session, Model d) {
		d.addAttribute("empno", session.getAttribute("empno"));
		int empno = ((int) session.getAttribute("empno"));
		d.addAttribute("member", service.getMember(empno));
		
		return "WEB-INF\\views\\dashboard.jsp";
	} 

	
	// 사원등록은 admin만 가능
	// http://localhost:7080/4PRO/join.do
	@RequestMapping("join.do")
	public String join(@RequestParam(value="lang", defaultValue="") String lang,
			HttpServletRequest request, HttpServletResponse response, 
			Member sch, Model d, HttpSession session) {
		String auth = service.ckpm2((int)session.getAttribute("empno"));
		d.addAttribute("auth", auth);
		if(auth.equals("admin")) {
			d.addAttribute("getLoginList", service.getLoginList(sch));
		}else {
			d.addAttribute("msg", "페이지에 대한\n권한이 없습니다.");
			d.addAttribute("url", "${path}/goDS.do");
			return "WEB-INF\\views\\Hres\\accessDenied.jsp";
		}
		return "WEB-INF\\views\\Member\\join.jsp";
	}
	
	// http://localhost:7080/4PRO/join2.do
	@RequestMapping("join2.do")
	public String insert4pro(Member ins, Model d) {
		System.out.println("이름:"+ins.getName());
		System.out.println("메일:"+ins.getEmail());
		service.insert4pro(ins);

		d.addAttribute("isInsert", "Y");
		d.addAttribute("proc", "ins");
		return "WEB-INF\\views\\Member\\join.jsp";
	}

}
