<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>车辆查询</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />

	</head>

	<body>
	<div class="page-container">
		<div class="text-c">
			汽车名称：<input style="width: 200px;" class="input-text" type="text" name="" placeholder="请输入汽车名字(支持模糊)"/>
			汽车品牌：<select name="" class="input-text" style="width: 250px">
			<option value="0">--请选择车辆品牌--</option>
			<option value="1">兰博基尼</option>
			<option value="2">法拉利</option>
			<option value="3">保时捷</option>
		</select>
			<button type="submit" class="btn btn-success radius" id="" name="">查询</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<a href="javascript:;" onclick="member_add('添加汽车','/user/autoAdd.html','','510')" class="btn btn-primary radius">添加汽车</a>
			</span>
		</div>
		<div class="mt-20">
			<table class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
				<tr class="text-c">
					<th width="80">汽车编号</th>
					<th width="100">汽车名称</th>
					<th width="100">汽车出厂日期</th>
					<th width="90">汽车品牌</th>
					<th width="150">汽车颜色</th>
					<th width="50">汽车价格</th>
					<th width="130">驱动方式</th>
					<th width="100">汽车配置</th>
					<th width="100">操作</th>
				</tr>
				</thead>
				<tbody>
				<tr class="text-c">
					<td>1</td>
					<td>Aventador</td>
					<td>2014-07-29 01:52:13</td>
					<td>1</td>
					<td>黄色</td>
					<td>7200000</td>
					<td>四驱</td>
					<td>1</td>
					<td class="td-manage">
						<a title="编辑" href="javascript:;" onclick="member_edit('编辑','/user/autoUpdate.html','4','','510')" class="ml-5" style="text-decoration:none">编辑</a>
						<a title="删除" href="javascript:;" onclick="member_del(this,'1')" class="ml-5" style="text-decoration:none">删除</a>
					</td>
				</tr>
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
	<script type="text/javascript">

		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*用户-编辑*/
		function member_edit(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*用户-删除*/
		function member_del(obj, id) {
			confirm("确定删除嘛？");
		}
	</script>
	</body>

</html>