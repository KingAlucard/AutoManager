<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>查询车辆配置</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />


	</head>

	<body>
	<div class="page-container">
		<div class="text-c">
			汽车编号：<input style="width: 200px;" class="input-text" type="text" name="autoId" placeholder="请输入汽车编号"/>
			<button type="submit" class="btn btn-success radius" id="" name="" onclick="getCon()">查询</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20"><a href="javascript:;" onclick="member_add('添加汽车配置','/user/configurationAdd.html','','510')" class="btn btn-primary radius">添加汽车配置</a></div>
		<div class="mt-20">
			<table class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
				<tr class="text-c">
					<th width="80">配置编号</th>
					<th width="100">汽车编号</th>
					<th width="100">发动机</th>
					<th width="90">变速箱</th>
					<th width="150">最高时速</th>
					<th width="50">排量</th>
					<th width="130">驱动方式</th>
					<th width="100">操作</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${list}" var="li">
					<tr class="text-c" id="selectRow">
					<td>${li.id}</td>
					<td>${li.autoId}</td>
					<td>${li.engine}</td>
					<td>${li.gearbox}</td>
					<td>${li.speed}</td>
					<td class="text-l">${li.displacement}</td>
					<td>${li.drive}</td>
					<td class="td-manage">
						<a title="编辑" href="javascript:;" class="update" style="text-decoration:none">编辑</a>
						<a title="删除" href="javascript:;" class="del" style="text-decoration:none" >删除</a>
					</td>
				</tr>
				</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="../statics/js/jquery.min.js"></script>
	<script type="text/javascript" src="../statics/js/layer.js"></script>
	<script type="text/javascript" src="../statics/js/H-ui.min.js"></script>
	<script type="text/javascript" src="../statics/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="../statics/js/WdatePicker.js"></script>
	<script type="text/javascript" src="../statics/js/laypage.js"></script>
	<script src = "../../statics/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script type="text/javascript">

		//加载事件删除
		$(function () {
			$(".del").click(function () {
				var is = confirm("确定删除嘛")
				var tr = $(this).closest('tr');//找到tr元素
				var getId = tr.find('td:eq(0)').html();//找到td元素
				if(is){
					location.href="/user/configurationDel.html?Id="+getId;
				}

			})


			$(".update").click(function () {
				var tr = $(this).closest('tr');//找到tr元素
				var id = tr.find('td:eq(0)').html();//找到td元素
				var autoId = tr.find('td:eq(1)').html();//找到td元素
				var engine = tr.find('td:eq(2)').html();//找到td元素
				var gearbox = tr.find('td:eq(3)').html();//找到td元素
				var speed = tr.find('td:eq(4)').html();//找到td元素
				var displacement = tr.find('td:eq(5)').html();//找到td元素
				var drive = tr.find('td:eq(6)').html();//找到td元素

				layer_show("编辑","/user/configurationUpdate.html?id="+id+"&autoId="+autoId+"&engine="+engine+"&gearbox="+gearbox+"&speed="+speed+"&displacement="+displacement+"&drive="+drive,"","510");

			})
		})

		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}

		//查询配置
		function getCon() {
			var autoId = $(".input-text").val();
            location.href="/user/configurationSelete.html?autoId="+autoId;
		}
	</script>
	</body>

</html>