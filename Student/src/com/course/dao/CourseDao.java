package com.course.dao;

import java.util.List;

public interface CourseDao {
List<Course> getAllCourses();
void insertCourse(Course course);
void deleteCourse(String CNo);
void updateCourse(Course course);
Course getCourseByCNo(String CNo);
}
