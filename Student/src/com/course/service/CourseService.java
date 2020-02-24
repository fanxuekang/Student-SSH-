package com.course.service;

import java.util.List;

import com.course.dao.Course;

public interface CourseService {
	List<Course> getAllCourses();
	void insertCourse(Course course);
	void deleteCourse(String CNo);
	void updateCourse(Course course);
	Course getCourseByCNo(String CNo);
}
