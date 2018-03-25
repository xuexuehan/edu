package com.bean;

public class StudentBean {
	private int id;
	private String name;
	private String sno;
	public StudentBean(int id, String name, String sno) {
		super();
		this.id = id;
		this.name = name;
		this.sno = sno;
	}
	public StudentBean(String name, String sno) {
		super();
		this.name = name;
		this.sno = sno;
	}
	public StudentBean() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	
}
