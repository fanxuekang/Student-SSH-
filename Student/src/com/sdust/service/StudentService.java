package com.sdust.service;

import java.util.List;

import com.sdust.dao.Student;

public interface StudentService {
	List<Student> getAllStudents();
	void insertStudent(Student student);
	void deleteStudent(String SNo);
	void updateStudent(Student student);
	Student getStudentBySNo(String SNo);
	List<Student> getStudentBySNoAndSClassAndSName(String SNo,String SClass,String SName);
}
