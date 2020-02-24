package com.course.dao;



import java.util.List;

import oracle.net.aso.s;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class CourseDaoImpl  implements CourseDao {
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public void deleteCourse(String CNo) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.delete(this.hibernateTemplate.get(Course.class, CNo));
	}

	

	public List<Course> getAllCourses() {
		List<Course> courses=(List<Course>)this.hibernateTemplate.find("from Course as c,Grade as g where c.CNo=g.CNo");
		return courses;
	}

	public Course getCourseByCNo(String CNo) {
		Course course=(Course)this.hibernateTemplate.get(Course.class,CNo);
		return course;
	}
//
	public void insertCourse(Course course) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(course);
	}

	public void updateCourse(Course course) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(course);
	}
}
