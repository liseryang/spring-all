package com.cn.wuxiong.spring.jpa.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/ui")
public class UiCtrl {

	@RequestMapping(value = "/siteMesh", method = RequestMethod.GET)
	public String siteMesh(Model model) {
		//model.addAttribute("TestAttribute", "欢迎进入");
		return "/sitemesh/main/index";
	}


}
