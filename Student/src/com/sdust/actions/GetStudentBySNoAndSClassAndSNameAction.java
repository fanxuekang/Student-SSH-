package com.sdust.actions;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sdust.dao.Student;
import com.sdust.service.StudentService;


public class GetStudentBySNoAndSClassAndSNameAction extends ActionSupport {
	private StudentService studentService;
	private Student student;
	
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		List<Student> student1=this.studentService.getStudentBySNoAndSClassAndSName(student.getSNo(),student.getSClass(),student.getSName());
		Map<String,Object> request=(Map<String,Object>)ActionContext.getContext().get("request");
		request.put("student", student1);
		return SUCCESS;
	}
}
