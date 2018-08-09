package com.j1802.admin.service;
/*
 * 提供对商品信息的访问接口
 */

import java.util.List;

import com.j1802.pojo.TbItem;

public interface ItemService {
//	全查
	public List<TbItem> findAll();

}
