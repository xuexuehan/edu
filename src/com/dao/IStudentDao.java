package com.dao;

import java.util.List;

import com.bean.StudentBean;

public interface IStudentDao {
	public boolean update(StudentBean stu);
	public StudentBean findById(int id);
	public StudentBean findByName(String sno);
}
