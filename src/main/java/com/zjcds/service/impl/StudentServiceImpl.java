package com.zjcds.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjcds.dao.StudentDao;
import com.zjcds.entity.Student;
import com.zjcds.service.StudentService;
@Service("StudentService")
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDao studentDao;

	/**
	 * 获取学生列表
	 */
	public List<Student> findAll() {
		return studentDao.findAll();
	}

	/**
	 * 获取记录条数
	 */
	public int getTotal() {
		return studentDao.getTotal();
	}


}
