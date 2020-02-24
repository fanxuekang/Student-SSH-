package com.sdust.dao;



import java.util.List;

import oracle.net.aso.s;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class StudentDaoImpl  implements StudentDao {
	private HibernateTemplate hibernateTemplate;
	

	public void deleteStudent(String SNo) {
		this.hibernateTemplate.delete(this.hibernateTemplate.get(Student.class, SNo));
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public List<Student> getAllStudents() {
		List<Student> students=(List<Student>)this.hibernateTemplate.find("from Student");
		return students;
	}

	public Student getStudentBySNo(String SNo) {
		Student student=(Student)this.hibernateTemplate.get(Student.class,SNo);
		return student;
	}

	public void insertStudent(Student student) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(student);
	}
//
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(student);
	}

	public List<Student> getStudentBySNoAndSClassAndSName(String SNo, String SClass,
			String SName) {
		// TODO Auto-generated method stub
		List<Student> student=(List<Student>)this.hibernateTemplate.find("from Student where SNo=? and SClass=? and SName=?",SNo,SClass,SName);
		return student;
	}
}
