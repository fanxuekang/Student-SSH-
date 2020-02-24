package com.sdust.service;



import java.util.List;

import com.sdust.dao.Student;
import com.sdust.dao.StudentDao;

public class StudentServiceImpl implements StudentService {

	private StudentDao studentDao;
	
	public void deleteStudent(String SNo) {
		this.studentDao.deleteStudent(SNo);
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		return this.studentDao.getAllStudents();
	}

	public Student getStudentBySNo(String SNo) {
		// TODO Auto-generated method stub
		return this.studentDao.getStudentBySNo(SNo);
	}

	public void insertStudent(Student student) {
		// TODO Auto-generated method stub
		this.studentDao.insertStudent(student);
	}
//
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		this.studentDao.updateStudent(student);
	}

	public List<Student> getStudentBySNoAndSClassAndSName(String SNo, String SClass,
			String SName) {
			// TODO Auto-generated method stub
		return this.studentDao.getStudentBySNoAndSClassAndSName(SNo, SClass, SName);
	}

}
