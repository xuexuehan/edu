package com.bean;

public class UserBean {
    private Integer id;
    private String account;
    private String passwd;
    private String tyname;
	public UserBean(Integer id, String account, String passwd, String tyname) {
		super();
		this.id = id;
		this.account = account;
		this.passwd = passwd;
		this.tyname = tyname;
	}
	public UserBean(String account, String passwd, String tyname) {
		super();
		this.account = account;
		this.passwd = passwd;
		this.tyname = tyname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getTyname() {
		return tyname;
	}
	public void setTyname(String tyname) {
		this.tyname = tyname;
	}
	@Override
	public String toString() {
		return "UserBean [id=" + id + ", account=" + account + ", passwd="
				+ passwd + ", tyname=" + tyname + "]";
	}
    
}
