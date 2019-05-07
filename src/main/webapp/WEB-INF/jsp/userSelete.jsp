<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>查询用户</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />

	</head>

	<body>
	<div class="page-container">
		<div class="text-c">
			<input style="width: 300px;" class="input-text" type="text" name="" placeholder="请输入手机号"/>
			<button type="submit" class="btn btn-success radius" id="" name="">查询</button>
		</div>
		<div class="mt-20">
			<table class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
				<tr class="text-c">
					<th width="80">用户编号</th>
					<th width="100">用户名</th>
					<th width="100">手机号</th>
					<th width="90">余额</th>
					<th width="150">地址</th>
					<th width="50">注册日期</th>
					<th width="130">身份证号码</th>
					<th width="100">银行卡号</th>
					<th width="100">操作</th>
				</tr>
				</thead>
				<tbody>
				<tr class="text-c">
					<td>1</td>
					<td>张三</td>
					<td>13212311231</td>
					<td>1000</td>
					<td>东莞</td>
					<td>2019-04-29 01:35:35</td>
					<td>123456789987654321</td>
					<td>123456789112548254</td>
					<td class="td-manage">
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