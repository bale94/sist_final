package pro4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pro4.dao.MemberDao;
import pro4.vo.Member;




@Service
public class MemberService {
	@Autowired(required = false)
	private MemberDao dao;
	
	@Autowired(required = false)
	private MailSenderService service;
	
	public void insert4pro(Member ins) {
		ins.setEmpno(dao.getEmpno());
		ins.setPass(getPass());
		System.out.println("### 사원번호:"+ins.getEmpno());
		System.out.println("### 비번:"+ins.getPass());
		service.senderMail(ins);
		dao.insert4pro(ins);
	}

	public String getPass() {
		
		char[] ranValue = new char[] {'1','2','3','4','5','6','7','8','9','0',
		              'A','B','C','D','E','F','G','H','I','J','K','L','M','N',
		              'O','P','Q','R','S','T','U','V','W','X','Y','Z'};
		
		String temp_pass = "";
		
		  int idx = 0;
	      for (int i = 0; i < 5; i++) {
	         idx = (int) (ranValue.length * Math.random());
	         temp_pass += ranValue[idx];
	      }
	      return temp_pass;
	};		
	
	
	// 8월7일 제발
	public List<Member> getLoginList(Member sch){
		return dao.getLoginList(sch);
	}
	public Member ck(Member sch){
		return dao.ck(sch);
	}


	public Object getMember(String auth) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	public Member getMember(int empno) {
		return dao.getMember(empno);
	}
	public String ckpm2(int empno) {
		return dao.ckpm2(empno);
	}

	

}
