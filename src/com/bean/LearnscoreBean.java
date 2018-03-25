package com.bean;

public class LearnscoreBean {
    private Integer id;
    private Integer sid;
    private Integer subject_id;
    private Double score;
	public LearnscoreBean(Integer id, Integer sid, Integer subject_id,
			Double score) {
		super();
		this.id = id;
		this.sid = sid;
		this.subject_id = subject_id;
		this.score = score;
	}
	public LearnscoreBean(Integer sid, Integer subject_id, Double score) {
		super();
		this.sid = sid;
		this.subject_id = subject_id;
		this.score = score;
	}
	public LearnscoreBean() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public Integer getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(Integer subject_id) {
		this.subject_id = subject_id;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "LearnscoreBean [id=" + id + ", sid=" + sid + ", subject_id="
				+ subject_id + ", score=" + score + "]";
	}
	
   
}
