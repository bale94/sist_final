package pro4.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import pro4.service.ScheduleService;
import pro4.vo.AllSchedule;
import pro4.vo.TodoSch;

@Controller
public class ScheduleController {
	@Autowired(required = false)
	private ScheduleService service;
	
	
	// http://localhost:7080/4PRO/allSchedule.do
	// 전체 업무
	@RequestMapping("allSchedule.do") 
	public String allSchedule(Model d,HttpSession session) {
		if(session.getAttribute("empno")==null) {
			return "redirect:/login.do";
		}else {
			int empno =  (int) session.getAttribute("empno");
			String auth = service.ckpm(empno);
			if(auth.equals("user")) {
				
				if(!(service.getTodoAS(empno)+"").equals("[]")) {
				List<AllSchedule> as = service.getTodoAS(empno);
				for(AllSchedule t : as) {
					if(t.getSdate()!=null) {
						t.setSdate(t.getSdate().substring(0,10));
						t.setEdate(t.getEdate().substring(0,10));
					}
					
				}
				d.addAttribute("todolist", as);
				}
			}else if(auth.equals("pm")) {
				if(!(service.getTodoPAS(empno)+"").equals("[]")) {
				List<AllSchedule> as = service.getTodoPAS(empno);
				for(AllSchedule t : as) {
					if(t.getSdate()!=null) {
						t.setSdate(t.getSdate().substring(0,10));
						t.setEdate(t.getEdate().substring(0,10));
					}
					
				}
				d.addAttribute("todolist", as);
				d.addAttribute("memlist", service.getMemlist(empno));
				}
			}
			d.addAttribute("auth", auth);
			return "WEB-INF\\views\\sched_calendar\\allSchedule.jsp";
		}
		
	}
	// 전체 업무 대시보드용-라에지
	@RequestMapping("allSchedule2.do") 
	public String allSchedule2(Model d,HttpSession session) {
		if(session.getAttribute("empno")==null) {
			return "redirect:/login.do";
		}else {
			int empno =  (int) session.getAttribute("empno");
			String auth = service.ckpm(empno);
			if(auth.equals("user")) {
				if(!(service.getTodoAS(empno)+"").equals("[]")) {
					List<AllSchedule> as = service.getTodoAS(empno);
					for(AllSchedule t : as) {
						if(t.getSdate()!=null) {
							t.setSdate(t.getSdate().substring(0,10));
							t.setEdate(t.getEdate().substring(0,10));
						}
						
					}
					d.addAttribute("todolist", as);
				}
				
			}else if(auth.equals("pm")) {
				if(!(service.getTodoPAS(empno)+"").equals("[]")) {
				List<AllSchedule> as = service.getTodoPAS(empno);
				for(AllSchedule t : as) {
					if(t.getSdate()!=null) {
						t.setSdate(t.getSdate().substring(0,10));
						t.setEdate(t.getEdate().substring(0,10));
					}
					
				}
				d.addAttribute("todolist", as);
				d.addAttribute("memlist", service.getMemlist(empno));
				}
			}
			d.addAttribute("auth", auth);
			return "WEB-INF\\views\\sched_calendar\\allSchedule2.jsp";
		}
		
	}
	
	@RequestMapping("downloadC.do")
	public String download11(@RequestParam("fname") String fname, Model d,HttpSession session) {
		
		d.addAttribute("downloadFileName", fname);
		return "downloadViewer2";
	}
	
	@RequestMapping("progress.do")
	public String progress(Model d, AllSchedule as,HttpSession session) {
		service.updateTodoProgress(as);
		return "redirect:/allSchedule.do";
	}
	
	@RequestMapping("insertRequest.do")
	public String insertRequest(Model d, AllSchedule as,HttpSession session) {
		int empno = (int) session.getAttribute("empno");
		int project_no = service.getProjectNo(empno);
		as.setProject_no(project_no);
		service.insertTodo(as);
		return "redirect:/allSchedule.do";
	}
	
	@RequestMapping("confirm.do")
	public String confirm(Model d, HttpSession session, AllSchedule as, @RequestParam("report") MultipartFile fname) {
		System.out.println("업로드된 파일명:"+fname.getOriginalFilename());
		int empno =  (int) session.getAttribute("empno");
		String fname2 = fname.getOriginalFilename();
		as.setEmpno(empno);
		as.setProgress("결재중");
		if(fname2!="") {
			
			as.setFname(fname2);
			String path = "C:\\a01_javaexp\\workspace\\4PRO\\src\\main\\webapp\\confirmFile\\";
			
			File f = new File(path+fname2);
			System.out.println(path+fname2);
			try {
				fname.transferTo(f);
				System.out.println("파일 업로드 완료");
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			service.InsertFile(as);
			
		}
		
		
		service.updateTodoProgress(as);
		return "redirect:/allSchedule.do";
	}

	//대시보드에 불러올려고 테스트중-라예지
	@RequestMapping("ganttDS.do")
	public String ganttDS() {
		
		return "WEB-INF\\views\\sched_calendar\\ganttDS.jsp";
	}
	//대시보드에 불러올려고 테스트중-라예지
	@RequestMapping("calendarDS.do")
	public String calendarDS(@RequestParam(value="ma",defaultValue="1") int ma,HttpSession session, Model d) {
		if(session.getAttribute("empno")==null) {
			return "redirect:/login.do";
		}else {
		int empno = (int) session.getAttribute("empno");
		if(service.ckpm(empno)!=null) {
			String auth = service.ckpm(empno);
			d.addAttribute("auth",auth);
			if(auth.equals("pm")) {
				d.addAttribute("todo", service.getTodoAll(empno));
			}else {
				d.addAttribute("todo", service.getTodo(empno));
			}
			d.addAttribute("project", service.getProject(empno));
		}
		if(ma==0) {
			d.addAttribute("mclick", "Y");
		}else {
			d.addAttribute("mclick", "N");
		}
		return "WEB-INF\\views\\sched_calendar\\calendarForDS.jsp";
		}
	}

	// http://localhost:7080/4PRO/calendar.do
	// 캘린더
	@RequestMapping("calendar.do") 
	public String calendar(@RequestParam(value="ma",defaultValue="1") int ma,HttpSession session, Model d) {
		if(session.getAttribute("empno")==null) {
			return "redirect:/login.do";
		}else {
		int empno = (int) session.getAttribute("empno");
		if(service.ckpm(empno)!=null) {
			String auth = service.ckpm(empno);
			d.addAttribute("auth",auth);
			if(auth.equals("pm")) {
				d.addAttribute("todo", service.getTodoAll(empno));
			}else {
				d.addAttribute("todo", service.getTodo(empno));
			}
			d.addAttribute("project", service.getProject(empno));
		}
		if(ma==0) {
			d.addAttribute("mclick", "Y");
		}else {
			d.addAttribute("mclick", "N");
		}
		return "WEB-INF\\views\\sched_calendar\\calendar.jsp";
		}
	}
	
	// user, pm 권한 일 시, 캘린더에 불러올 (참여중인 프로젝트의 전체 업무 일정 리스트)/참여중인 프로젝트 일정 리스트
		@RequestMapping("calList.do") 
		public String calList(Model d,HttpSession session) {
			int empno = (int) session.getAttribute("empno");
				List<TodoSch> ps = service.getProjectSchList(empno);
				ps.addAll(service.getTodoSchList(empno));
				d.addAttribute("projectlist", ps);
			return "pageJsonReport";
		}
		
		
		
	// http://localhost:7080/4PRO/gantt.do
			// 간트 차트
			@RequestMapping("gantt.do") 
			public String gantt(Model d, HttpSession session) {
				if(session.getAttribute("empno")==null) {
					return "redirect:/login.do";
				}else {
					int empno = (int) session.getAttribute("empno");
						String auth = service.ckpm(empno);
						
						System.out.println(auth);
						d.addAttribute("auth",auth);
						if(auth.equals("pm")) {
							if(service.getTodoAll(empno)!=null) {
								d.addAttribute("todo", service.getTodoAll(empno));
							}
							
						}else if(auth.equals("user")) {
							if(service.getTodo(empno)!=null) {
								d.addAttribute("todo", service.getTodo(empno));
							}
							
						}
						
						if(service.getProject(empno)!=null) {
							d.addAttribute("project", service.getProject(empno));
						}
				
				
				
				return "WEB-INF\\views\\sched_calendar\\gantt.jsp";
				}
			}
			
	
	
	// ceo,admin 권한 일 시, 캘린더에 불러올 전체 프로젝트 일정 리스트
	@RequestMapping("calList2.do")
	public String calList2(Model d,HttpSession session) {
		int empno = (int) session.getAttribute("empno");
		List<TodoSch> ps = service.getProjectSchList2();
		d.addAttribute("projectlist", ps);
		return "pageJsonReport";
	}
	
	@RequestMapping("calList3.do")
	public String calList3(Model d,HttpSession session) {
		int empno = (int) session.getAttribute("empno");
		List<TodoSch> ps = service.getTodoSchList3(empno);
        d.addAttribute("projectlist", ps);
		return "pageJsonReport";
	}
	
	@RequestMapping("getFname.do")
	public String getFname(Model d, int todo_no, HttpSession session) {
		if(service.getFname(todo_no)==null) {
			d.addAttribute("fname", "N");
		}else {
			d.addAttribute("fname", service.getFname(todo_no));
		}
		
		return "pageJsonReport";
	}

	// 캘린더 일정등록을 통한 todo 일정 insert
	@RequestMapping("todoInsert.do")
	public String todoInsert(TodoSch ins,HttpSession session) {
		String start = ins.getStart().substring(0,10);
		String end = ins.getEnd().substring(0,10);
		end=end+" 12:00:00";
		
		ins.setStart(start);
		ins.setEnd(end);
		service.insertTodoSch(ins);

		// 등록 후, 초기화면으로 이동
		return "redirect:/calendar.do";
	}

	// 캘린더 일정등록을 통핸 project 일정 insert
	@RequestMapping("projectInsert.do")
	public String projectInsert(TodoSch ins,HttpSession session) {
		String start = ins.getStart().substring(0,10);
		String end = ins.getEnd().substring(0,10);
		end=end+" 12:00:00";
		
		ins.setStart(start);
		ins.setEnd(end);
		service.insertProjectSch(ins);

		// 등록 후, 초기화면으로 이동
		return "redirect:/calendar.do";
	}

	// 캘린더 일정수정을 통한 todo 일정 update
	@RequestMapping("todoUpdate.do")
	public String updateTodoSch(TodoSch upt,HttpSession session) {
		String start = upt.getStart().substring(0,10);
		String end = upt.getEnd().substring(0,10);
		end=end+" 12:00:00";
		String returnDate="";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date edate = sdf.parse(start);
			Calendar c = Calendar.getInstance();
	        c.setTime(edate);
	        c.add(Calendar.DATE, 1);
 
	        returnDate = sdf.format(c.getTime());

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		upt.setStart(returnDate);
		upt.setEnd(end);
		service.updateTodoSch(upt);
		return "redirect:/calendar.do";
	}
	
	// 캘린더 클릭&드랍을 통한 todo 일정 update
	@RequestMapping("todoUpdate2.do")
	public String updateTodoSch2(TodoSch upt,HttpSession session) {
		String start = upt.getStart().substring(0,10);
		String end = upt.getEnd().substring(0,10);
		end=end+" 12:00:00";
		
		upt.setStart(start);
		upt.setEnd(end);
		service.updateTodoSch(upt);
		return "redirect:/calendar.do";
	}
	// 캘린더 일정수정을 통한 project 일정 update
		@RequestMapping("projectUpdate.do")
		public String updateProjectSch(TodoSch upt,HttpSession session) {
			String start = upt.getStart().substring(0,10);
			String end = upt.getEnd().substring(0,10);
			end=end+" 12:00:00";
			String returnDate="";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date edate = sdf.parse(start);
				Calendar c = Calendar.getInstance();
		        c.setTime(edate);
		        c.add(Calendar.DATE, 1);
	 
		        returnDate = sdf.format(c.getTime());

			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			upt.setStart(returnDate);
			upt.setEnd(end);
			service.updateProjectSch(upt);
			return "redirect:/calendar.do";
		}
		
	// 캘린더 클릭&드랍을 통한 project 일정 update
		@RequestMapping("projectUpdate2.do")
		public String updateProjectSch2(TodoSch upt,HttpSession session) {
			String start = upt.getStart().substring(0,10);
			String end = upt.getEnd().substring(0,10);
			end=end+" 12:00:00";
			
			upt.setStart(start);
			upt.setEnd(end);
			service.updateProjectSch(upt);
			return "redirect:/calendar.do";
		}

	// 캘린더 todo 일정 delete
		@RequestMapping("todoDelete.do")
		public String deleteTodoSch(int id) {
			service.deleteTodoSch(id);
			return "redirect:/calendar.do";
		}

	// 캘린더 project 일정 delete
		@RequestMapping("projectDelete.do")
		public String deleteProjectSch(int id) {
				service.deleteProjectSch(id);
				return "redirect:/calendar.do";
		}
	// user, pm 권한 일 시, 간트 차트에 불러올 (참여중인 프로젝트의 전체 업무 일정 리스트)/참여중인 프로젝트 일정 리스트
		@RequestMapping("ganList.do")
		public String ganList(Model d,HttpSession session) {
		int empno = (int) session.getAttribute("empno");
			if(service.checkTeam(empno)==0) { //참여중인 프로젝트가 없는 경우
				d.addAttribute("projectlist", "N");
			}else {
				TodoSch t=service.getProjectSchList(empno).get(0);
				String s=service.getProjectSchList(empno).get(0).getStart();
				String e=service.getProjectSchList(empno).get(0).getEnd();
				String date2=s.substring(0,10);
				String date1=e.substring(0,10);

				DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

				 /* Date타입으로 변경 */

				Date d1;
				try {
					d1 = format.parse( date1 );
					Date d2 = format.parse( date2 );
					 long Sec = (d1.getTime() - d2.getTime()) / 1000; // 초
					 long Days = Sec / (24*60*60)+1; // 일자수
					 String Days2 = Days+"";
						t.setStart(date2);
						t.setEnd(date1);
						t.setDuration(Days2);
						t.setTitle(service.getProjectSchList(empno).get(0).getTitle());
						
						d.addAttribute("projectlist", t);


				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				int no=0;
				List<TodoSch> TList = new ArrayList<TodoSch>();
				for(TodoSch sch:service.getTodoSchList2(empno)) {
					String st=service.getTodoSchList2(empno).get(no).getStart();
					String et=service.getTodoSchList2(empno).get(no).getEnd();
					TodoSch tt=service.getTodoSchList2(empno).get(no);
					String date2t=st.substring(0,10);
					String date1t=et.substring(0,10);


					 /* Date타입으로 변경 */

					Date d1t;
					try {
						d1t = format.parse( date1t );
						Date d2t = format.parse( date2t );
						 long Sect = (d1t.getTime() - d2t.getTime()) / 1000; // 초
						 long Dayst = Sect / (24*60*60)+1; // 일자수
						 String Days2t = Dayst+"";
						 	tt.setStart(date2t);
							tt.setEnd(date1t);
							tt.setDuration(Days2t);
							tt.setTitle(service.getTodoSchList2(empno).get(no).getTitle());			
							TList.add(tt);
					} catch (ParseException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					no++;
				}
				d.addAttribute("todolist", TList);
			}
		return "pageJsonReport";
	}
	
	// ceo, admin 권한 일 시, 간트 차트에 불러올 전체 프로젝트 일정 리스트
	@RequestMapping("ganList2.do")
	public String ganList2(Model d,HttpSession session) {
		int empno = (int) session.getAttribute("empno");

			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

			int no=0;
			List<TodoSch> TList = new ArrayList<TodoSch>();
			for(TodoSch sch:service.getProjectSchList2()) {
				String st=service.getProjectSchList2().get(no).getStart();
				String et=service.getProjectSchList2().get(no).getEnd();
				TodoSch tt=service.getProjectSchList2().get(no);
				String date2t=st.substring(0,10);
				String date1t=et.substring(0,10);


				 /* Date타입으로 변경 */

				Date d1t;
				try {
					d1t = format.parse( date1t );
					Date d2t = format.parse( date2t );
					 long Sect = (d1t.getTime() - d2t.getTime()) / 1000; // 초
					 long Dayst = Sect / (24*60*60)+1; // 일자수
					 String Days2t = Dayst+"";
					 
					 	tt.setStart(date2t);
						tt.setEnd(date1t);
						tt.setDuration(Days2t);
						tt.setTitle(service.getProjectSchList2().get(no).getTitle());
						
						TList.add(tt);

				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				no++;
			}
			d.addAttribute("projectlist", TList);

		return "pageJsonReport";
	}
	
	
		
	// 간트차트 일정등록을 통한 todo 일정 insert
	@RequestMapping("todoInsert2.do")
	public String todoInsert2(TodoSch ins,HttpSession session) {
		String start = ins.getStart().substring(0,10);
		String end = ins.getEnd().substring(0,10);
		end=end+" 12:00:00";
		
		ins.setStart(start);
		ins.setEnd(end);
		service.insertTodoSch(ins);

		// 등록 후, 초기화면으로 이동
		return "redirect:/gantt.do";
	}

	// 간트차트 일정등록을 통한 project 일정 insert
	@RequestMapping("projectInsert2.do")
	public String projectInsert2(TodoSch ins,HttpSession session) {
		String start = ins.getStart().substring(0,10);
		String end = ins.getEnd().substring(0,10);
		end=end+" 12:00:00";
		
		ins.setStart(start);
		ins.setEnd(end);
		service.insertProjectSch(ins);

		// 등록 후, 초기화면으로 이동
		return "redirect:/gantt.do";
	}

	// 간트 차트 일정수정/클릭&드랍을 통한 todo 일정 update
	@RequestMapping("todoUpdate3.do")
	public String updateTodoSch3(TodoSch upt) {
		String start = upt.getStart().substring(0,10);
		String end = upt.getEnd().substring(0,10);
		end=end+" 12:00:00";

		upt.setStart(start);
		upt.setEnd(end);
		service.updateTodoSch2(upt);
		return "redirect:/gantt.do";
	}
	
	// 간트 차트 일정수정/클릭&드랍을 통한 project 일정 update
	@RequestMapping("projectUpdate3.do")
	public String updateProjectSch3(TodoSch upt) {
		String start = upt.getStart().substring(0,10);
		String end = upt.getEnd().substring(0,10);
		end=end+" 12:00:00";
		
		upt.setStart(start);
		upt.setEnd(end);
		service.updateProjectSch2(upt);
		return "redirect:/gantt.do";
	}
	
	// 간트 차트 todo 일정 delete
	@RequestMapping("todoDelete2.do")
	public String deleteTodoSch2(int id) {
		service.deleteTodoSch(id);
		return "redirect:/gantt.do";
	}
	
	// 간트 차트 project 일정 delete
	@RequestMapping("projectDelete2.do")
	public String deleteProjectSch2(int id) {
			service.deleteProjectSch(id);
			return "redirect:/gantt.do";
	}
	
	// 클릭한 업무 일정이 자신의 일정인지 check하여 Y/N 반환
	@RequestMapping("ckempno.do")
	public String ckEmpno(int id, Model d, HttpSession session){
		int empno =  (int) session.getAttribute("empno");
		if(empno==service.ckEmpno(id)||service.ckpm(empno).equals("pm")) {
			d.addAttribute("check","Y");
		}else {
			d.addAttribute("check","N");
		}
		return "pageJsonReport";
	}
	
	// 접속 중인 계정이 pm인지 check
	@RequestMapping("ckpm.do")
	public String ckpm(Model d, HttpSession session){
		int empno =  (int) session.getAttribute("empno");
		if(service.ckpm(empno).equals("pm")) {
			d.addAttribute("checkpm","Y");
		}else {
			d.addAttribute("checkpm","N");
		}
		return "pageJsonReport";
	}
	
}
