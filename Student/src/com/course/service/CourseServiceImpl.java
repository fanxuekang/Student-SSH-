package com.course.service;



import java.util.List;

import com.course.dao.Course;
import com.course.dao.CourseDao;

public class CourseServiceImpl implements CourseService {

	private CourseDao courseDao;
	
	public void deleteCourse(String CNo) {
		// TODO Auto-generated method stub
		this.courseDao.deleteCourse(CNo);
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public List<Course> getAllCourses() {
		// TODO Auto-generated method stub
		return this.courseDao.getAllCourses();
	}

	public Course getCourseByCNo(String CNo) {
		// TODO Auto-generated method stub
		return this.courseDao.getCourseByCNo(CNo);
	}

	public void insertCourse(Course course) {
		// TODO Auto-generated method stub
		this.courseDao.insertCourse(course);
	}

	public void updateCourse(Course course) {
		// TODO Auto-generated method stub
		this.courseDao.updateCourse(course);
	}

}
