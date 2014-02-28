package com.cn.wuxiong.spring.jpa.school2.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.wuxiong.spring.jpa.school2.domain.Student;
import com.cn.wuxiong.spring.jpa.school2.service.SchoolService;

@Controller
@RequestMapping(value = "/school/school2")
public class SchoolCtrl {
	@Autowired
	private SchoolService service;

	/**主页
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String pagingList(Model model) {
		model.addAttribute("TestAttribute", "欢迎进入");
		return "school/schoolPage";
	}

	/**添加一个学生
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/addAStudent", method = RequestMethod.GET)
	public String addAStudent(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("TestAttribute", "what a nice day?");
		Student s = new Student();
		Random random = new Random();
		s.setAge(20 + random.nextInt() % 10);
		s.setName(random.nextInt() % 2 == 1 ? "wx" : "wy");
		s.setSex(random.nextInt() % 2 == 1 ? "男" : "女");
		s.setStuNo("20081101" + random.nextInt() % 41);
		
		service.addStudentByEm(s);   //这是调用底层EntityManager实现的
		
		//这个是调用CrudRepository接口中的方法实现的（这个接口中的方法Spring已经帮助实现了），当然最底层还是EntityManager
		//service.addStudentByPagingAndSortingRepository(s); 
		
		service.testDao();
		
		System.out.println("测试结束…………………………");
		return "redirect:/school/school2";
	}

	/**添加多个学生 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/addManyStudent", method = RequestMethod.GET)
	public String addManyStudent(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		Student s = new Student();
		Random random = new Random();
		s.setAge(20 + random.nextInt() % 10);
		s.setName(random.nextInt() % 2 == 1 ? "wx" : "wy");
		s.setSex(random.nextInt() % 2 == 1 ? "男" : "女");
		s.setStuNo("20081101" + random.nextInt() % 41);
		service.addStudentByEm(s);
		return "redirect:/school/school2";
	}
	
	@RequestMapping(value = "/findStudentByName", method = RequestMethod.GET)
	public String findStudentByName(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		List<Student> sss = service.findStudentsByName("wx");
		System.out.println("叫 wx 的学生的数量为："+sss.size());
		return "redirect:/school/school2";
	}

}
