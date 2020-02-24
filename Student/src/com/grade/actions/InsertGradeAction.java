package com.grade.actions;

import com.grade.dao.Grade;
import com.grade.service.GradeService;
import com.opensymphony.xwork2.ActionSupport;

public class InsertGradeAction extends ActionSupport {
	
	private GradeService gradeService;
	private Grade grade;
	
	
	public void setGradeService(GradeService gradeService) {
		this.gradeService = gradeService;
	}

	
	public Grade getGrade() {
		return grade;
	}


	public void setGrade(Grade grade) {
		this.grade = grade;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.gradeService.insertGrade(grade);
		return SUCCESS;
	}
	
	
}
