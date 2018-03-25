package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import com.bean.UserBean;
import com.dao.IUserDao;
import com.db.*;

public class UserDao extends DBManager implements IUserDao {
	private ResultSet rs;
	
	@Override
	public boolean save(UserBean us) {
		String sql = "insert into user(id,account,utype)" +
				"values(?,?,?)";
		int count = update(sql, new Object[]{us.getId(), us.getAccount(), us.getTyname()
	});
		return count>0;
	}

	@Override
	public boolean delete(int id) {
		String sql = "delete from user where uid=?";
		int count = update(sql, new Object[]{id});
		return count>0;
	}

	@Override
	public boolean update(UserBean us) {
		String sql = "update user set uname=?,upwd=?,utype=? where uid=?";
		int count = update(sql, new Object[]{us.getAccount(),us.getPasswd(),us.getTyname(), us.getId()});
		return count>0;
	}

	@Override
	public UserBean findById(int id) {
		UserBean us = null;
		String sql = "select * from user where id = ?";
		rs = query(sql, new Object[]{id});
			try {
				while (rs.next()) {
					us = new UserBean(rs.getInt("id"),
							rs.getString("account"),
							rs.getString("passwd"),
							rs.getString("tyname"));
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			} finally {
				closeAll();
			}
			return us;
	}

	@Override
	public List<UserBean> findAll() {
		List<UserBean> users = new Vector<UserBean>();
		String sql = "select * from user";
		rs = query(sql, null);
		try {
			while (rs.next()) {
				UserBean us = new UserBean(rs.getInt("id"),
						rs.getString("account"),
						rs.getString("passwd"),
						rs.getString("tyname"));
				users.add(us);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return users;
	}

	@Override
	public UserBean login(String account, String passwd, String tyname) {
		String sql = "select * from user where account=? and passwd=? and tyname = ?";
		UserBean us = null;
		rs = query(sql, new Object[]{account, passwd, tyname});
		try {
			while (rs.next()) {
					us = new UserBean(rs.getInt("id"),
							account,
						passwd,
						tyname);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return us;
	}

}
