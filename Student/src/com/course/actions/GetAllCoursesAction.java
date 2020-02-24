package com.course.actions;

import java.util.List;
import java.util.Map;

import com.course.dao.Course;
import com.course.service.CourseService;
import com.grade.dao.Grade;
import com.grade.service.GradeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GetAllCoursesAction extends ActionSupport {
	private CourseService courseService;
//	private GradeService gradeService;

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

//	public void setGradeService(GradeService gradeService) {
//		this.gradeService = gradeService;
//	}

	@Override
	public String execute() throws Exception {
		List<Course> courses=this.courseService.getAllCourses();
//		List<Grade>  grades=this.gradeService.getAllGrades();
		Map<String,Object> request=(Map<String,Object>)ActionContext.getContext().get("request");
//		Map<String,Object> request1=(Map<String,Object>)ActionContext.getContext().get("request");
		request.put("courses", courses);
//		request1.put("grades", grades);
		return SUCCESS;
	}



}
