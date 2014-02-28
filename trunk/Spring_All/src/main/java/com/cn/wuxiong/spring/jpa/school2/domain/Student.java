package com.cn.wuxiong.spring.jpa.school2.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "aastudent")
//@NamedQueries({  //待测试 不一定能用
//	@NamedQuery(name = "findStudentBystuNo", query = "SELECT stu FROM Student stu WHERE stu.stuNo = :stuNo"),
//	
//	@NamedQuery(name = "getServiceReportCount",	query = "SELECT COUNT(*) FROM ServiceReport sr WHERE sr.groupId = :groupId"),
//})
public class Student {
	private Long id;
	private String stuNo;
	private String name;
	private Integer age;
	private String sex;

	public Student() {
	};

	
	
	public Student(Long id, String stuNo, String name, Integer age, String sex) {
		this.id = id;
		this.stuNo = stuNo;
		this.name = name;
		this.age = age;
		this.sex = sex;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", nullable = false)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "stuNo", nullable = false)
	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	@Column(name = "name", nullable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "age", nullable = false)
	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Column(name = "sex", nullable = false)
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
