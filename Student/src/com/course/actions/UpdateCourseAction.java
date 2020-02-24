package com.course.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.course.dao.Course;
import com.course.service.CourseService;

public class UpdateCourseAction  extends ActionSupport{
	private CourseService courseService;
	private Course course;
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
		this.courseService.updateCourse(course);
		return SUCCESS;
	}
}
