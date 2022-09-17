package pro4.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pro4.dao.ScheduleDao;
import pro4.vo.AllSchedule;
import pro4.vo.Member;
import pro4.vo.ProjectSch;
import pro4.vo.ProjectTeam;
import pro4.vo.Todo;
import pro4.vo.TodoSch;

@Service
public class ScheduleService {
	@Autowired(required=false)
	private ScheduleDao dao;
	
	public List<TodoSch> getProjectSchList(int empno){
		return dao.getProjectSchList(empno);
	}
	
	public List<TodoSch> getTodoSchList(int empno){
		return dao.getTodoSchList(empno);
	}
	
	public List<TodoSch> getTodoSchList2(int empno){
		return dao.getTodoSchList2(empno);
	}
	public void insertProjectSch(TodoSch ins) {
		dao.insertProjectSch(ins);
	}
	public void insertTodoSch(TodoSch ins) {
		dao.insertTodoSch(ins);
	}
	public void updateProjectSch(TodoSch upt) {
		dao.updateProjectSch(upt);
	}
	public void updateTodoSch(TodoSch upt) {
		dao.updateTodoSch(upt);
	}
	public void deleteProjectSch(int id) {
		dao.deleteProjectSch(id);
	}
	public void deleteTodoSch(int id) {
		dao.deleteTodoSch(id);
	}
	public List<ProjectTeam> getProject(int empno) {
		// TODO Auto-generated method stub
		return dao.getProject(empno);
	}
	public List<Todo> getTodo(int empno) {
		// TODO Auto-generated method stub
		return dao.getTodo(empno);
	}

	public int checkTeam(int empno) {
		// TODO Auto-generated method stub
		return dao.checkTeam(empno);
	}

	public int ckEmpno(int id) {
		// TODO Auto-generated method stub
		return dao.ckEmpno(id);
	}

	public String ckpm(int empno) {
		// TODO Auto-generated method stub
		return dao.ckpm(empno);
	}

	public List<Todo> getTodoAll(int empno) {
		// TODO Auto-generated method stub
		return dao.getTodoAll(empno);
	}

	public List<TodoSch> getProjectSchList2() {
		// TODO Auto-generated method stub
		return dao.getProjectSchList2();
	}
	
	public List<TodoSch> getProjectSchList3(int empno){
		return dao.getProjectSchList3(empno);
	}
	
	public List<TodoSch> getTodoSchList3(int empno){
		return dao.getTodoSchList3(empno);
	}

	public List<AllSchedule> getTodoAS(int empno) {
		// TODO Auto-generated method stub
		return dao.getTodoAS(empno);
	}

	public void updateTodoProgress(AllSchedule as) {
		// TODO Auto-generated method stub
		dao.updateTodoProgress(as);
	}


	public void InsertFile(AllSchedule as) {
		// TODO Auto-generated method stub
		dao.insertFile(as);
	}


	public List<AllSchedule> getTodoPAS(int empno) {
		// TODO Auto-generated method stub
		return dao.getTodoTAS(empno);
	}

	public String getFname(int todo_no) {
		// TODO Auto-generated method stub
		return dao.getFname(todo_no);
	}

	public List<Member> getMemlist(int empno) {
		// TODO Auto-generated method stub
		return dao.getMemlist(empno);
	}

	public int getProjectNo(int empno) {
		// TODO Auto-generated method stub
		return dao.getProjectNo(empno);
	}

	public void insertTodo(AllSchedule as) {
		// TODO Auto-generated method stub
		dao.insertTodo(as);
	}

	public void updateTodoSch2(TodoSch upt) {
		dao.updateTodoSch2(upt);
		
	}

	public void updateProjectSch2(TodoSch upt) {
		// TODO Auto-generated method stub
		dao.updateProjectSch2(upt);
	}
}
