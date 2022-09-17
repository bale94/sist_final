package pro4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DScontroller {
	// http://localhost:7080/4PRO/DS.do
		@RequestMapping("DS.do")
		public String DS() {

			return "WEB-INF\\views\\dashboard.jsp";
			
		}

}
