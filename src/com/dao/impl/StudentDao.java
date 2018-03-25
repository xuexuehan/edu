package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.StudentBean;
import com.bean.UserBean;
import com.dao.IStudentDao;
import com.db.DBManager;

public class StudentDao extends DBManager implements IStudentDao {
	private ResultSet rs;
	
	@Override
	public boolean update(StudentBean stu) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public StudentBean findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StudentBean findByName(String sno) {
		StudentBean stu = null;
		String sql = "select * from student where sno = ?";
		rs = query(sql, new Object[]{sno});
			try {
				while (rs.next()) {
					stu = new StudentBean(rs.getString("name"), sno);
					
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			} finally {
				closeAll();
			}
			return stu;
	}

}
