<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
  		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>车辆后台管理界面</title>
		<link rel="stylesheet" type="text/css" href="../statics/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="../statics/css/admin.css"/>
	</head>
	<body>
	<div class="main-layout" id='main-layout'>
		<!--侧边栏-->
		<div class="main-layout-side">
			<div class="m-logo">
			</div>
			<!--汽车信息-->
			<ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
				<li class="layui-nav-item layui-nav-itemed">
					<a href="javascript:;"><i class="iconfont">&#xe607;</i>汽车管理</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;" data-url="/user/autoSelect.html" data-id='1' data-text="车辆管理"><span class="l-line"></span>车辆管理</a></dd>
					</dl>
				</li>
				<!--汽车配置信息-->
				<li class="layui-nav-item">
					<a href="javascript:;"><i class="iconfont">&#xe608;</i>汽车配置</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;" data-url="/user/configurationSelete.html" data-id='5' data-text="配置管理"><span class="l-line"></span>配置管理</a></dd>
					</dl>
				</li>
				<!--汽车品牌-->
				<li class="layui-nav-item">
					<a href="javascript:;"><i class="iconfont">&#xe608;</i>汽车品牌</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;" data-url="/user/autoTypeSelete.html" data-id='9' data-text="品牌管理"><span class="l-line"></span>品牌管理</a></dd>
					</dl>
				</li>
				<!--用户管理-->
				<li class="layui-nav-item">
					<a href="javascript:;"><i class="iconfont">&#xe608;</i>用户信息</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;" data-url="/user/userSelete.html" data-id='13' data-text="用户管理"><span class="l-line"></span>用户管理</a></dd>
					</dl>
				</li>

			</ul>
		</div>
		<!--右侧内容-->
		<div class="main-layout-container">
			<!--头部-->
			<div class="main-layout-header">
				<div class="menu-btn" id="hideBtn">
					<a href="javascript:;">
						<span class="iconfont">&#xe60e;</span>
					</a>
				</div>
				<ul class="layui-nav" lay-filter="rightNav">
					<li class="layui-nav-item">
						<a href="javascript:;">超级管理员</a>
					</li>
					<li class="layui-nav-item"><a href="javascript:;">退出</a></li>
				</ul>
			</div>
			<!--主体内容-->
			<div class="main-layout-body">
				<!--tab 切换-->
				<div class="layui-tab layui-tab-brief main-layout-tab" lay-filter="tab" lay-allowClose="true">
					<ul class="layui-tab-title">
						<li class="layui-this welcome">后台主页</li>
					</ul>
					<div class="layui-tab-content">
						<div class="layui-tab-item layui-show" style="background: #f5f5f5;">
							<!--1-->
							<iframe src="/user/welcome.html" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0"></iframe>
							<!--1end-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--遮罩-->
		<div class="main-mask">

		</div>
	</div>
	<script type="text/javascript">
		var scope={
			link:'./welcome.html'
		}
	</script>
	<script src="../statics/layui/layui.js" type="text/javascript" charset="utf-8"></script>
	<script src="../statics/js/common.js" type="text/javascript" charset="utf-8"></script>
	<script src="../statics/js/main.js" type="text/javascript" charset="utf-8"></script>

	</body>
</html>

