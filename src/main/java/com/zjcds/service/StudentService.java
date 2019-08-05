package com.zjcds.service;

import java.util.List;


import com.zjcds.entity.Student;

public interface StudentService {
	
	public List<Student> findAll();

	public int getTotal();
}
