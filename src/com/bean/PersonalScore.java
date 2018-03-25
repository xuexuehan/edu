package com.bean;

public class PersonalScore {
	private double score;
	private String name;
	public PersonalScore() {
	}
	public PersonalScore(double score, String name) {
		super();
		this.score = score;
		this.name = name;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
