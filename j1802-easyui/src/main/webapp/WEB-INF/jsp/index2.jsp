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
<link href="js/jquery-easyui-1.5/themes/default/easyui.css"
	type="text/css" rel="stylesheet">
</head>
<body class="easyui-layout">

    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>   
    <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>   
    <div data-options="region:'west',title:'West',split:true" style="width:100px;"></div>   
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;"></div>   
</div>  
	<h3>admin首页index.jsp</h3>
	<!-- 使用标签+属性生成easyui对象 -->
	<div id="calendar1" class="easyui-calendar"
		style="width: 180px; height: 180px;"></div>
	<!-- 标签+js生成easyui对象 -->
	<div id="ca2" class=""></div>
	<!-- 导入jquery库 -->
	<script type="text/javascript" src="js/jquery-easyui-1.5/jquery.min.js"></script>
	<!-- 导入easyUI库 -->
	<script type="text/javascript"
		src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
	<!-- 语言库 -->
	<script type="text/javascript"
		src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
	<!-- 导入自定义的外部js库 -->
	<script type="text/javascript" src=""></script>
	<script type="text/javascript">
		$("#ca2").calendar({
			
			firstDate:1
		});
	</script>
</body>
</html>