package com.cn.wuxiong.spring.jpa.school2.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.cn.wuxiong.spring.jpa.school2.domain.Student;

public interface StudentDao extends PagingAndSortingRepository<Student, Long>,
		JpaSpecificationExecutor<Student>, StudentDaoEx {
	
	/*可以通过这种定义接口方法的形式实现多重操作（这些方法不需要实现，
	 * 只需要以一定的形式书写方法名就可以了）*/
	List<Student> findStudentByName(String name);
	List<Student> findByNameIgnoreCase(String name);
	List<Student> findByAgeGreaterThan(int age);
}
