package com.sdust.actions;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sdust.dao.Student;
import com.sdust.service.StudentService;

public class GetAllStudentsAction extends ActionSupport {
	private StudentService studentService;

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	@Override
	public String execute() throws Exception {
		List<Student> students=this.studentService.getAllStudents();
		Map<String,Object> request=(Map<String,Object>)ActionContext.getContext().get("request");
		request.put("students", students);
		return SUCCESS;
	}



}
