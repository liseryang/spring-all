package com.cn.wuxiong.spring.jpa.school2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cn.wuxiong.spring.jpa.school2.dao.StudentDao;
import com.cn.wuxiong.spring.jpa.school2.domain.Student;

@Service
@Transactional
public class SchoolService {
	@Autowired
	private StudentDao dao_stu;

	public void testService() {
		System.out.println("###########################Test service");
	}

	public void addStudentByPagingAndSortingRepository(Student s) {
		dao_stu.save(s);
		if (null != s.getId()) {
			System.out.println(" addStudentByPagingAndSortingRepository ##############" + s.getId());
		}
	}
	
	public void addStudentByEm(Student s) {
		dao_stu.persist(s);
		if (null != s.getId()) {
			System.out.println("addStudentByEm##############" + s.getId());
		}
	}

	public void countStudents() {
		Long count = dao_stu.count();
		
		System.out.println("学生数量为：" + count);
	}
	
	public void testDao(){
		Long count = dao_stu.count();
		System.out.println("学生数量为：" + count);
		
		Student s = dao_stu.findOne(28L);
		System.out.println("查找结果为"+s.getStuNo());
	}
	
	public List<Student> findStudentsByName(String name){
		//return dao_stu.findStudentByName(name);
		
		return dao_stu.findByAgeGreaterThan(25);
	}

}
