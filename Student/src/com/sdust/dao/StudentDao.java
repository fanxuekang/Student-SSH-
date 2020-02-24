package com.sdust.dao;

import java.util.List;

public interface StudentDao {
List<Student> getAllStudents();
void insertStudent(Student student);
void deleteStudent(String SNo);
void updateStudent(Student student);
Student getStudentBySNo(String SNo);
List<Student> getStudentBySNoAndSClassAndSName(String SNo,String SClass,String SName);
}
