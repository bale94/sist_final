package pro4.dao;

import java.util.List;

import pro4.vo.AllSchedule;
import pro4.vo.Member;
import pro4.vo.ProjectTeam;
import pro4.vo.Todo;
import pro4.vo.TodoSch;

public interface ScheduleDao {
	public List<TodoSch> getTodoSchList(int empno);
	public List<TodoSch> getProjectSchList(int empno);
	public void insertProjectSch(TodoSch ins);
	public void insertTodoSch(TodoSch ins);
	public void updateProjectSch(TodoSch upt);
	public void updateTodoSch(TodoSch upt);
	public void deleteProjectSch(int id);
	public void deleteTodoSch(int id);
	public List<ProjectTeam> getProject(int empno);
	public List<Todo> getTodo(int empno);
	public int checkTeam(int empno);
	public List<TodoSch> getTodoSchList2(int empno);
	public int ckEmpno(int id);
	public String ckpm(int empno);
	public List<Todo> getTodoAll(int empno);
	public List<TodoSch> getProjectSchList2();
	public List<TodoSch> getProjectSchList3(int empno);
	public List<TodoSch> getTodoSchList3(int empno);
	public List<AllSchedule> getTodoAS(int empno);
	public void updateTodoProgress(AllSchedule as);
	public void insertFile(AllSchedule as);
	public List<AllSchedule> getTodoTAS(int empno);
	public String getFname(int todo_no);
	public List<Member> getMemlist(int empno);
	public int getProjectNo(int empno);
	public void insertTodo(AllSchedule as);
	public void updateTodoSch2(TodoSch upt);
	public void updateProjectSch2(TodoSch upt);
}
