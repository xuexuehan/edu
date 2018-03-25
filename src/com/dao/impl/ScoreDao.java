package com.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.bean.LearnscoreBean;
import com.bean.PersonalScore;
import com.bean.SubjectBean;
import com.dao.IScoreDao;
import com.db.DBManager;

public class ScoreDao extends DBManager implements IScoreDao {

	@Override
	public List<PersonalScore> listScore(int sid) {
		List<PersonalScore> list = new ArrayList<PersonalScore>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			rs = query("select learnscore.score, subject.name from learnscore, subject where learnscore.subject_id = subject.id and learnscore.sid="+sid, null);
			
			while (rs.next()) {
				PersonalScore ps = new PersonalScore();
				ps.setScore(rs.getDouble("score"));
				ps.setName(rs.getString("name"));
				
				list.add(ps);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}

	@Override
	public List<SubjectBean> listClass(int sid) {
		List<SubjectBean> list = new ArrayList<SubjectBean>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			rs = query("select * from learnscore, subject where learnscore.subject_id = subject.id and learnscore.sid="+sid, null);
			
			while (rs.next()) {
				SubjectBean sb = new SubjectBean();
				sb.setName(rs.getString("name"));
				list.add(sb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}

}

