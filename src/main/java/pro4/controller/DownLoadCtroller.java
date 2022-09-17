package pro4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DownLoadCtroller {
	
	@RequestMapping("download.do")
	public String download(@RequestParam("fname") String fname, Model d) {	
		d.addAttribute("downloadFileName", fname);
		return "downloadViewer";
	}
}
