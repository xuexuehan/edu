package com.dao;

import java.util.List;

import com.bean.SubjectBean;

public interface ISubjectDao {
	public List<SubjectBean> ListSubject(int subid);
}
