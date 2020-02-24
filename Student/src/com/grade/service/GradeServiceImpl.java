package com.grade.service;



import java.util.List;

import com.grade.dao.Grade;
import com.grade.dao.GradeDao;

public class GradeServiceImpl implements GradeService {

	private GradeDao gradeDao;
	
	public void deleteGrade(String SCNo) {
		// TODO Auto-generated method stub
		this.gradeDao.deleteGrade(SCNo);
	}

	public void setGradeDao(GradeDao gradeDao) {
		this.gradeDao = gradeDao;
	}

	public List<Grade> getAllGrades() {
		// TODO Auto-generated method stub
		return this.gradeDao.getAllGrades();
	}

	public Grade getGradeBySCNo(String SCNo) {
		// TODO Auto-generated method stub
		return this.gradeDao.getGradeBySCNo(SCNo);
	}

	public void insertGrade(Grade grade) {
		// TODO Auto-generated method stub
		this.gradeDao.insertGrade(grade);
	}

	public void updateGrade(Grade grade) {
		// TODO Auto-generated method stub
		this.gradeDao.updateGrade(grade);
	}

}
