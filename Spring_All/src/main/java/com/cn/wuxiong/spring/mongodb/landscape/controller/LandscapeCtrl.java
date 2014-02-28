package com.cn.wuxiong.spring.mongodb.landscape.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.wuxiong.spring.mongodb.landscape.domain.ScenicSpots;
import com.cn.wuxiong.spring.mongodb.landscape.service.ScenicService;
import com.cn.wuxiong.spring.mongodb.sequence.service.MongoDBSequenceService;

@Controller
@RequestMapping(value = "/landscape")
public class LandscapeCtrl {
	@Autowired
	private ScenicService service;

	@Autowired
	private MongoDBSequenceService mss;

	/**
	 * 主页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String pagingList(Model model) {
		model.addAttribute("TestAttribute", "欢迎进入");
		return "landscape/landscapePage";
	}

	/**
	 * 添加一个景点
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/addAscenic", method = RequestMethod.GET)
	public synchronized String addAAscenic(Model model, HttpServletRequest request, HttpServletResponse response) {
		service.findCount();

		Random ran = new Random();
		int r = ran.nextInt()%20;
		ScenicSpots ss = new ScenicSpots();
		
		
		ss.setName("飞沙洲" + r);
		ss.setOpenTime(8);
		ss.setCloseTime(18);
		ss.setTicketPrice(50.56 + r);
		ss.setRemark("落霞与孤鹜齐飞，秋水共长天一色。");
		service.addScenic(ss);
		return "landscape/landscapePage";
	}

	/**
	 * 查找一个景点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/findAscenic", method = RequestMethod.GET)
	public String findAAscenic() {
		ScenicSpots ss = service.findScenic(new ObjectId("530ffa3923c03219e07bca6d"));
		System.out.println(ss);
		return "landscape/landscapePage";
	}
	
	/**
	 * 通过条件查找多个景点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/findManyAscenic", method = RequestMethod.GET)
	public String findManyAscenic() {
		Query query = new Query(Criteria.where("ticketPrice").gt(50));
		List<ScenicSpots> ss = service.findScenicByCondition(query);
		System.out.println(ss);
		return "landscape/landscapePage";
	}

	/**
	 * 删除一个景点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/deleteAscenic", method = RequestMethod.GET)
	public String deleteAAscenic() {
		service.deleteScenicById(123L);
		return "landscape/landscapePage";
	}

	/**
	 * 更新一个景点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateAscenic", method = RequestMethod.GET)
	public String updateAAscenic() {
		service.updateScenic(123L);
		return "landscape/landscapePage";
	}
	
	/**
	 * 删除所有景点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/deleteAllscenic", method = RequestMethod.GET)
	public String deleteAllscenic() {
		service.deleteAllScenic();
		return "landscape/landscapePage";
	}

}
