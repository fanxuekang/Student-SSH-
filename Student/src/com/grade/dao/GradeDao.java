package com.grade.dao;

import java.util.List;

public interface GradeDao {
List<Grade> getAllGrades();
void insertGrade(Grade grade);
void deleteGrade(String SCNo);
void updateGrade(Grade grade);
Grade getGradeBySCNo(String SCNo);
}
