package com.course.actions;

import com.course.dao.Course;
import com.course.service.CourseService;
import com.opensymphony.xwork2.ActionSupport;

public class InsertCourseAction extends ActionSupport {
	
	private CourseService courseService;
	private Course course;
	
	
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	
	public Course getCourse() {
		return course;
	}


	public void setCourse(Course course) {
		this.course = course;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.courseService.insertCourse(course);
		return SUCCESS;
	}
	
	
}
