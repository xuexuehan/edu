package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
/**
 * @version 1.0
 * @date 2018-01-20
 */
public class DBManager {
	
	private Connection conn;
	
	private PreparedStatement psta;
	
	private ResultSet rs;
	
	private static DataSource ds;
	
	private static Context context;
	
	private static final String DSTR="java:/comp/env/shopSource";
	
//	static {
//		try {
//			context = new InitialContext();
//			ds = (DataSource) context.lookup(DSTR);
//		} catch (NamingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	
	/**
	 * 得到数据库连接
	 * @return
	 */
	public Connection getConnect(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//conn = DriverManager.getConnection("jdbc:mysql://localhost/edu", "root", "123");
			conn = DriverManager.getConnection("jdbc:mysql://111.231.225.85:3306/sbjb", "sbjb", "sbjb123321!!!");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		try {
//			conn = ds.getConnection();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		return conn;
	}
	/**
	 * 关闭数据库连接
	 */
	public void closeAll(){

		try {
			if(rs!=null){
				rs.close();
			}
			if(psta!=null){
				psta.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	/**
	 * 负责查询
	 * @param sql
	 * @param obj
	 * @return
	 */
	public ResultSet query(String sql,Object [] obj){
		conn = getConnect();
		try {
			psta = conn.prepareStatement(sql);
			if(obj!=null&&obj.length>0){
				for (int i = 0; i < obj.length; i++) {
					psta.setObject(i+1, obj[i]);
				}
				
				
			}
			//select * from user
			//select * from user  where id=? and name=?
			rs = psta.executeQuery();//执行查询
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet queryNotClose(String sql,Object [] obj,Connection connection){
		conn = connection;
		try {
			psta = conn.prepareStatement(sql);
			if(obj!=null&&obj.length>0){
				for (int i = 0; i < obj.length; i++) {
					psta.setObject(i+1, obj[i]);
				}
				
				
			}
			//select * from user
			//select * from user  where id=? and name=?
			rs = psta.executeQuery();//执行查询
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	/**
	 * 增删改数据库操作方法
	 * @param sql
	 * @param obj
	 * @return
	 */
	public int update(String sql,Object [] obj){
		int count = 0;
		conn = getConnect();
		try {
			psta = conn.prepareStatement(sql);
			if(obj!=null&&obj.length>0){
				for (int i = 0; i < obj.length; i++) {
					psta.setObject(i+1, obj[i]);
				}
			}
			count = psta.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll();
		}
		return count;
	}
	
	public int updateNotClose(String sql,Object [] obj,Connection connection){
		int count = 0;
		conn = connection;
		try {
			psta = conn.prepareStatement(sql);
			if(obj!=null&&obj.length>0){
				for (int i = 0; i < obj.length; i++) {
					psta.setObject(i+1, obj[i]);
				}
			}
			count = psta.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public static void main(String[] args) {
		DBManager db = new DBManager();
		System.out.println(db.getConnect());
	}

}
