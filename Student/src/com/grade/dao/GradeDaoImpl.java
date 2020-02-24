package com.grade.dao;



import java.util.List;

import oracle.net.aso.s;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class GradeDaoImpl  implements GradeDao {
	private HibernateTemplate hibernateTemplate;
	

	public void deleteGrade(String SCNo) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.delete(this.hibernateTemplate.get(Grade.class, SCNo));
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public List<Grade> getAllGrades() {
		List<Grade> grades=(List<Grade>)this.hibernateTemplate.find("from Course as c,Grade as g where c.CNo=g.CNo");
		return grades;
	}

	public Grade getGradeBySCNo(String SCNo) {
		Grade grade=(Grade)this.hibernateTemplate.get(Grade.class,SCNo);
		return grade;
	}
//
	public void insertGrade(Grade grade) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(grade);
	}

	public void updateGrade(Grade grade) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(grade);
	}
}
