package com.sdust.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.sdust.dao.Student;
import com.sdust.service.StudentService;

public class InsertStudentAction extends ActionSupport {
	
	private StudentService studentService;
	private Student student;
	
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	
	public Student getStudent() {
		return student;
	}


	public void setStudent(Student student) {
		this.student = student;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.studentService.insertStudent(student);
		return SUCCESS;
	}
	
	
}
