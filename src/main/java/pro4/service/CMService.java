package pro4.service;

import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import pro4.dao.CMDao;
import pro4.vo.Member;
import pro4.vo.Minutes;
import pro4.vo.Project;

@Service
public class CMService {
	
	@Autowired(required = false)
	private JavaMailSender sender;
	
	@Autowired(required = false)
	private CMDao dao;
	
	public List<Project> getPrjList(){
		return dao.getPrjList();
	}
	
	public Project getPrjInfo(int project_no) {
		return dao.getPrjInfo(project_no);
	}
	
	public List<Minutes> getMinutesList(int project_no){
		return dao.getMinutesList(project_no);
	}
	
	public Minutes getMinutes(int minutes_no) {
		return dao.getMinutes(minutes_no);
	}
	
	public void regMinutes(Minutes mntReg) {
		dao.regMinutes(mntReg);
	}

	public void uptMinutes(Minutes mntUpt) {
		dao.uptMinutes(mntUpt);
	}
	
	public void delMinutes(int minutes_no) {
		dao.delMinutes(minutes_no);
	}
	
	public String getMemName(int empno) {
		return dao.getMemName(empno);
	}
	
	public List<Member> searchMember(Map map) {
		return dao.searchMember(map);
	}

	public String senderMail(Minutes mm) {
		String msg = "회의록이 성공적으로 공유되었습니다.";
		MimeMessage mmsg = sender.createMimeMessage();
		String content ="<table style=\"border: 2px solid; border-collapse: collapse; width: 100%;\">"
					  + "<tr>\r\n"
					  + "<th style=\\\"border: 1px solid #dddddd; text-align: left; padding: 8px;\\\">참석자</th>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<td style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\">"+mm.getAttendees()+"</td>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<th style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\">회의제목</th>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<td style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\">"+mm.getSubject()+"</td>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<th style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\">회의내용</th>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<td style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\">"+mm.getContents()+"</td>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<th style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\"\">결정사항</th>\r\n"
					  + "</tr>\r\n"
					  + "<tr>\r\n"
					  + "<td style=\"border: 1px solid #dddddd; text-align: left; padding: 8px;\">"+mm.getDecision()+"</td>\r\n"
					  + "</tr>\r\n"
					  + "</table>";		
		try {
			mmsg.setSubject(mm.getMdateS() + " 회의록 공유드립니다.");
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(mm.getReceiver()));
			mmsg.setContent(content, "text/html; charset=UTF-8");

			sender.send(mmsg);
			
		} catch (MessagingException e) {
			msg = "메일 발송 에러 : " + e.getMessage();
			e.printStackTrace();
			msg = "일반 발송 에러 : " + e.getMessage();
		}
				
		return msg;
	}
	
}
