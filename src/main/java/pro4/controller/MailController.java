package pro4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pro4.service.MailSenderService;
import pro4.vo.Mail;
import pro4.vo.Member;



@Controller
public class MailController {
	
	@Autowired(required=false)
	private MailSenderService service;
	//http://localhost:7080/4PRO/mailFrom.do
	@GetMapping("mailFrom.do") 
		public String mailForm() {
			return "WEB-INF\\views\\Member\\mail.jsp";
		}
		@PostMapping("mailSender.do")
		public String mailSender(Mail mail, Member member, Model d) {
			d.addAttribute("msg", service.senderMail(mail, member));
			return "WEB-INF\\views\\Member\\mail.jsp";
		}
	
	

}
