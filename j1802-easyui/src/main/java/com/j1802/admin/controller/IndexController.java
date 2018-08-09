package com.j1802.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {
//	WEB/INF下的index.jsp
	@RequestMapping("/")
	public String showIndex(){
		return "index";
	}
//	
	@RequestMapping("/{page}")
	public String showPage(@PathVariable("page") String page){
		return page;
	}
	
}
