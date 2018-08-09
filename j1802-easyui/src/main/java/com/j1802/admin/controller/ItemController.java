package com.j1802.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.j1802.admin.service.ItemService;
import com.j1802.pojo.TbItem;

@Controller
@RequestMapping("/item")
public class ItemController {

	@Autowired
	private ItemService itemService;

	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public List<TbItem> findAllItems() {

		List<TbItem> all = itemService.findAll();
		
		if (all != null){
			
			System.out.println(all.size());
		}
			
		return all;//返回给谁？

	}
}
