package pro4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	// http://localhost:7080/4PRO/index.do
	@RequestMapping("index.do")
	public String index() {

		return "WEB-INF\\views\\index.jsp";
	}
	
	// http://localhost:7080/4PRO/home.do
	@RequestMapping("home.do")
	public String home() {
		
		return "WEB-INF\\views\\COMMONTEMPLATE\\commonNav.jsp";
	}
	
	@RequestMapping("accessDenied.do")
	private String accessDenied() {
		return "WEB-INF\\views\\accessDenied.jsp";
	}
}
