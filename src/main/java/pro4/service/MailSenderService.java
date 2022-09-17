package pro4.service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import pro4.dao.MemberDao;
import pro4.vo.Mail;
import pro4.vo.Member;

@Service
public class MailSenderService {
	// 컨테이너에 있는 메일 발송 객체 autowiring 처리
	@Autowired(required = false)
	private JavaMailSender sender;
	@Autowired(required = false)
	private MemberDao dao;
	
	public String senderMail(Mail email, Member member) {
		String msg = "메일 발송 성공"; // 메일 발송이 성공되었을 때,
		// 처리할 메서드 선언
		// 1. 멀티미디어형 메일 데이터 전송
		MimeMessage mmsg= sender.createMimeMessage();
		try {
			mmsg.setSubject("4pro 사원번호와 임시비밀번호 입니다.");
			// 3. 수신자 설정
			mmsg.setRecipient(RecipientType.TO, 
						new InternetAddress(member.getEmail()));
			// 4. 내용 설정 
			mmsg.setText("환영합니다. 4PRO 찾아주셔서 감사합니다."
					+ "사원번호/임시비밀번호 발급완료!!\n"+member.getName()+"님"+"\n사원등록이 완료되었습니다." + "\n사원번호 : "
		               + member.getEmpno() + "\n임시비밀번호 : " + member.getPass()+ "\n로그인 후 비밀번호 변경을 해주세요."
		               + "\n http://49.236.178.36:7080/4PRO/login.do");
			// 5. 발송 처리
			sender.send(mmsg);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "메일 발송 에러:"+e.getMessage();
			System.out.println(msg);
		} catch (Exception e){
			msg = "일반 에러 발생:"+e.getMessage();
			
			
		}
		return msg;
	}
	public String senderMail(Member member) {
		String msg = "메일 발송 성공"; // 메일 발송이 성공되었을 때,
		// 처리할 메서드 선언
		// 1. 멀티미디어형 메일 데이터 전송
		MimeMessage mmsg= sender.createMimeMessage();
		try {
			mmsg.setSubject("4pro 사원번호와 임시비밀번호 입니다.");
			// 3. 수신자 설정
			mmsg.setRecipient(RecipientType.TO, 
						new InternetAddress(member.getEmail()));
			// 4. 내용 설정 
			mmsg.setText("환영합니다. 4PRO 찾아주셔서 감사합니다."
					+ "사원번호/임시비밀번호 발급!!\n"+member.getName()+"님"+"\n사원등록이 완료되었습니다." + "\n사원번호 : "
		               + member.getEmpno() + "\n임시비밀번호 : " + member.getPass()+ "\n로그인 후 비밀번호 변경을 해주세요."
		               + "\n  http://49.236.178.36:7080/4PRO/login.do");
			// 5. 발송 처리
			sender.send(mmsg);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "메일 발송 에러:"+e.getMessage();
			System.out.println(msg);
		} catch (Exception e){
			msg = "일반 에러 발생:"+e.getMessage();
			
			
		}
		return msg;
	}	

	
	public void uptTemPass(Member upt) {
		
		char[] ranValue = new char[] {'1','2','3','4','5','6','7','8','9','0',
		              'A','B','C','D','E','F','G','H','I','J','K','L','M','N',
		              'O','P','Q','R','S','T','U','V','W','X','Y','Z'};
		
		String temp_pass = "";
		
		  int idx = 0;
	      for (int i = 0; i < 5; i++) {
	         idx = (int) (ranValue.length * Math.random());
	         temp_pass += ranValue[idx];
	      }
	      
	      upt.setPass(temp_pass);
	      dao.uptTemPass(upt);
	};
	

}
