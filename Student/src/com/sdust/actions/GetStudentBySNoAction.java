package com.sdust.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.sdust.dao.Student;
import com.sdust.service.StudentService;


public class GetStudentBySNoAction extends ActionSupport {
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
		student=this.studentService.getStudentBySNo(student.getSNo());
		return SUCCESS;
	}
}
