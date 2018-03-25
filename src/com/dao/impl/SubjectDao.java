package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import com.bean.SubjectBean;
import com.dao.ISubjectDao;
import com.db.DBManager;

public class SubjectDao extends DBManager implements ISubjectDao {

	private ResultSet rs;
	@Override
	public List<SubjectBean> ListSubject(int subid) {
		List<SubjectBean> lstsub = new Vector<SubjectBean>();
		String sql = "select * from subject where id = ?";
		rs = query(sql, new Object[]{subid});
		try {
			while (rs.next()) {
				SubjectBean sub = new SubjectBean(subid,
						rs.getString("name"));
				lstsub.add(sub);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return lstsub;
	}

}
