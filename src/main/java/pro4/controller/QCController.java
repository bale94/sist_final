package pro4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pro4.service.QCService;
import pro4.vo.QC;

@Controller
public class QCController {
	@Autowired(required=false)
	private QCService service;
	// http://localhost:7080/4PRO/QC.do
	@RequestMapping("QC.do")
	public String getQC(QC sch, Model d){
		d.addAttribute("qlist",service.QCList(sch));
		return "WEB-INF\\views\\QC\\QCList.jsp";

	}
}
/*
 */