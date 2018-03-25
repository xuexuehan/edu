package com.dao;

import java.util.List;

import com.bean.UserBean;
public interface IUserDao {
	public boolean save(UserBean us);
	public boolean delete(int id);
	public boolean update(UserBean us);
	public UserBean findById(int id);
	public List<UserBean> findAll();
	/**
	 * 根据用户名与密码找到相关信息
	 * @param name
	 * @param pwd
	 * @return 如果找到,返回该实体类的所有信息,如果没找到,返回null
	 */
	public UserBean login(String account, String passwd, String tyname);
}
