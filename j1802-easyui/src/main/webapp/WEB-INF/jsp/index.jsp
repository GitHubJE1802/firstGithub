<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入easyUI总样式 -->
<link href="js/jquery-easyui-1.5/themes/default/easyui.css"
	type="text/css" rel="stylesheet">
<!-- 引入easyUI小图标样式 -->
<link href="js/jquery-easyui-1.5/themes/icon.css" type="text/css"
	rel="stylesheet">

</head>
<body class="easyui-layout">

	<div data-options="region:'north'" style="height: 100px;"></div>
	<div data-options="region:'south'">author:liujie @Version</div>
	<div data-options="region:'west',title:'功能区',width:200,fit:false">

		<div id="aa" class="easyui-accordion" data-options="fit:true">
			<div title="商品管理" data-options="iconCls:'icon-ok'">
				<ul id="tt" class="easyui-tree mytt">
					<li data-options="attributes:{'url':'item-list'}"><span>查询商品</li>
					
					<li data-options="attributes:{'url':'item-add'}"><span>添加商品</li>
				</ul>
			</div>
			<div title="订单管理" data-options="iconCls:'icon-reload'">
				<ul id="tt" class="easyui-tree mytt">
					<li data-options="attributes:{'url':'content-list'}"><span>内容分类</li>
					<li data-options="attributes:{'url':'content-add'}"><span>内容维护</li>
				</ul>
			</div>
			<div title="用户管理" data-options="iconCls:'icon-ok'">
				<ul id="tt" class="easyui-tree mytt">
					<li data-options="attributes:{'url':'user-list'}"><span>查询用户</li>
					<li data-options="attributes:{'url':'user-add'}"><span>添加用户</li>
				</ul>
			</div>
		</div>
	</div>
	<div data-options="region:'center' ">
		<div id="mytabs" class="easyui-tabs" data-options="{fit:true}">
			<div title="欢迎" style="padding: 20px; display: none;">欢迎来到商场后台</div>
			
		</div>

	</div>

	<!-- 
	<h3>admin首页index.jsp</h3>
	使用标签+属性生成easyui对象
	<div id="calendar1" class="easyui-calendar"
		style="width: 180px; height: 180px;"></div>
		
		
	标签+js生成easyui对象
	<div id="ca2" ></div>  -->

	<!-- 导入jquery库 -->
	<script type="text/javascript" src="js/jquery-easyui-1.5/jquery.min.js"></script>
	<!-- 导入easyUI库 -->
	<script type="text/javascript"
		src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
	<!-- 语言库 -->
	<script type="text/javascript"
		src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
	<!-- 导入日期类的js库 -->
	<script type="text/javascript" src="js/moment/moment.min.js"></script>
	<script type="text/javascript" src="js/moment/moment-with-locales.js"></script>
	<!-- 导入自定义的外部js库 -->
	<script type="text/javascript" src="js/myweb.js"></script>
	<script type="text/javascript">

		$(".mytt").tree({
			onClick : function(node) {
				//alert(node.text);
				//console.log(node.attributes.url);
				var tab = $("#mytabs").tabs('getTab',node.text);
				if(tab){//选项卡存在
					$("#mytabs").tabs('select',node.text);//选择指定的选项卡
				}else{//不存在，则新增选项卡
					$("#mytabs").tabs('add',{
						title:node.text,
						href:node.attributes.url,//新增选项卡后跳转到其他页面
						closable:true
					});
	
				}
			}
		});

	</script>
</body>
</html>