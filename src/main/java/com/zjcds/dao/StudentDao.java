package com.zjcds.dao;

import java.util.List;

import com.zjcds.entity.Student;

public interface StudentDao {
	public List<Student> findAll();

	public int getTotal();

}
