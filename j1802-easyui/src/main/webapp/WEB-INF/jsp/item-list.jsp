<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<table class="easyui-datagrid" data-options="fit:true,url:'item/list',fitColumns:true,singleSelect:true">
	<thead>
		<tr>
			<th data-options="field:'id',width:100">编码</th>
			<th data-options="field:'title',width:100">名称</th>
			<th data-options="field:'price',width:100,align='right'">价格</th>
		</tr>
	</thead>
</table>
