package com.cn.wuxiong.spring.jpa.school2.dao;

import org.springframework.stereotype.Repository;

import com.cn.wuxiong.spring.jpa.school2.domain.Student;

@Repository
public interface StudentDaoEx {  //这个接口中可以写一些StudentDao不能满足要求的方法。我这里纯粹测试好玩
	public int getStudentCount();
	public void persist(Student st);
	public void testFunc();
}
