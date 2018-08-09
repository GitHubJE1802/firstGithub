package com.j1802.admin.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.j1802.admin.service.ItemService;
import com.j1802.mapper.TbItemMapper;
import com.j1802.pojo.TbItem;
import com.j1802.pojo.TbItemExample;
@Service
public class ItemServiceImpl implements ItemService {
	
	@Resource
	private TbItemMapper itemMapper;

	@Override
	public List<TbItem> findAll() {
		
		TbItemExample example = new TbItemExample();

		List<TbItem> list = itemMapper.selectByExample(example);
		
		return list;//返回到哪里去了？
		
	}

}
