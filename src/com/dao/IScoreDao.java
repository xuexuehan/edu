package com.dao;

import java.util.List;
import java.util.Vector;

import com.bean.LearnscoreBean;
import com.bean.SubjectBean;

public interface IScoreDao {
	public List<?> listScore(int sid);
	public List<SubjectBean> listClass(int sid);
}
