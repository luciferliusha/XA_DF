package com.zjcds.entity;

public class Student {
	private int id;
	private String sname;
	private String sex;
	private int score;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getsname() {
		return sname;
	}

	public void setsname(String sname) {
		this.sname = sname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Student{" +
				"id=" + id +
				", sname='" + sname + '\'' +
				", sex='" + sex + '\'' +
				", score=" + score +
				'}';
	}
}
