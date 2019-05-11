<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>品牌查询</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />

	</head>

	<body>


	<div class="page-container">
		<div class="cl pd-5 bg-1 bk-gray mt-20"><a href="javascript:;" onclick="member_add('添加汽车品牌','/user/autoTypeAdd.html','','510')" class="btn btn-primary radius">添加汽车品牌</a></div>
		<div class="mt-20">
			<table class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
				<tr class="text-c">
					<th width="80">品牌编号</th>
					<th width="100">品牌名称</th>
					<th width="100">操作</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${list}" var="li">
					<tr class="text-c">
						<td>${li.id}</td>
						<td>${li.name}</td>
						<td class="td-manage">
							<a title="编辑" href="javascript:;" class="update" style="text-decoration:none">编辑</a>
							<a title="删除" href="javascript:;" class="del" id="delType" style="text-decoration:none">删除</a>
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
				var is = confirm("确定删除嘛？");
				var tr = $(this).closest('tr');//找到tr元素
				var getId = tr.find('td:eq(0)').html();//找到td元素
				if(is){
					location.href="/user/autoTypeDel.html?Id="+getId;
				}
			})
			$(".update").click(function () {

				var tr = $(this).closest('tr');//找到tr元素
				var id = tr.find('td:eq(0)').html();//找到td元素
				var name = tr.find('td:eq(1)').html();//找到td元素
				alert(id)
				alert(name)
				layer_show("编辑", "/user/autoTypeUpdate.html?name="+name+"&Id="+id, "", "510");
			})

		})
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*用户-编辑*/
		function member_edit(title, url, id, w, h) {

		}
	</script>
	</body>

</html>