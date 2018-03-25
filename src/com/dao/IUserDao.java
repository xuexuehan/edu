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
	 * �����û����������ҵ������Ϣ
	 * @param name
	 * @param pwd
	 * @return ����ҵ�,���ظ�ʵ�����������Ϣ,���û�ҵ�,����null
	 */
	public UserBean login(String account, String passwd, String tyname);
}
