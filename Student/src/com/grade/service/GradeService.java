package com.grade.service;

import java.util.List;

import com.grade.dao.Grade;

public interface GradeService {
	List<Grade> getAllGrades();
	void insertGrade(Grade grade);
	void deleteGrade(String SCNo);
	void updateGrade(Grade grade);
	Grade getGradeBySCNo(String SCNo);
}
