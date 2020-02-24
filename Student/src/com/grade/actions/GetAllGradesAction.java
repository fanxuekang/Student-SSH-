package com.grade.actions;

import java.util.List;
import java.util.Map;

import com.grade.dao.Grade;
import com.grade.service.GradeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GetAllGradesAction extends ActionSupport {
	private GradeService gradeService;

	public void setGradeService(GradeService gradeService) {
		this.gradeService = gradeService;
	}

	@Override
	public String execute() throws Exception {
		List<Grade> grades=this.gradeService.getAllGrades();
		Map<String,Object> request=(Map<String,Object>)ActionContext.getContext().get("request");
		request.put("grades", grades);
		return SUCCESS;
	}



}
