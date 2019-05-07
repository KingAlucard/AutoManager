<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
			汽车编号：<input style="width: 200px;" class="input-text" type="text" name="" placeholder="请输入汽车编号"/>
			<button type="submit" class="btn btn-success radius" id="" name="">查询</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20"><a href="javascript:;" onclick="member_add('添加汽车配置','/user/configurationAdd.html','','510')" class="btn btn-primary radius">添加汽车配置</a></span></div>
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
				<tr class="text-c">
					<td>1</td>
					<td>1</td>
					<td>黑霸王发动机</td>
					<td>5档自动变速箱</td>
					<td>230</td>
					<td class="text-l">1.5T</td>
					<td>四驱</td>
					<td class="td-manage">
						<a title="编辑" href="javascript:;" onclick="member_edit('编辑','/user/configurationUpdate.html','4','','510')" class="ml-5" style="text-decoration:none">编辑</a>
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