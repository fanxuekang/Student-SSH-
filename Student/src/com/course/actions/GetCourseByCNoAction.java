package com.course.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.course.dao.Course;
import com.course.service.CourseService;
import com.grade.dao.Grade;
import com.grade.service.GradeService;

public class GetCourseByCNoAction extends ActionSupport {
	private CourseService courseService;
	private GradeService gradeService;
	private Course course;
	private Grade grade;
//	public Grade getGrade() {
//		return grade;
//	}
//	public void setGrade(Grade grade) {
//		this.grade = grade;
//	}
//	public void setGradeService(GradeService gradeService) {
//		this.gradeService = gradeService;
//	}
	public Course getCourse() {
		return course;
	}
public void setCourse(Course course) {
	this.course = course;
}
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		course=this.courseService.getCourseByCNo(course.getCNo());
//		grade =this.gradeService.getGradeBySCNo(grade.getCNo());
		return SUCCESS;
	}
}
