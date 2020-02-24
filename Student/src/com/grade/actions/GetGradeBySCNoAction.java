package com.grade.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.grade.dao.Grade;
import com.grade.service.GradeService;

public class GetGradeBySCNoAction extends ActionSupport {
	private GradeService gradeService;
	private Grade grade;
	public Grade getGrade() {
		return grade;
	}
public void setGrade(Grade grade) {
	this.grade = grade;
}
	public void setGradeService(GradeService gradeService) {
		this.gradeService = gradeService;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		grade=this.gradeService.getGradeBySCNo(grade.getSCNo());
		return SUCCESS;
	}
}
