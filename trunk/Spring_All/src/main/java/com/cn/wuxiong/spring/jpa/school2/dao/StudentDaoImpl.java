package com.cn.wuxiong.spring.jpa.school2.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cn.wuxiong.spring.jpa.school2.domain.Student;

@Repository
public class StudentDaoImpl implements StudentDaoEx {//对于那些补充的方法的实现
	@PersistenceContext
	private EntityManager em;
	
	// @Override
	public void testFunc() {
		System.out.println("#############Test DAO");
	}

	public void persist(Student st) {
		em.persist(st);
		System.out.println(st);
	}

	public int getStudentCount() {
		return 4;
	}
}
