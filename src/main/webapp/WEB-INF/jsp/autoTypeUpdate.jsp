<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>品牌修改</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />

		<!--/meta 作为公共模版分离出去-->
	</head>

	<body>
	<article class="page-container">
		<form action="/user/autoTypeUpdateType.html" method="post" class="form form-horizontal" id="form-member-add">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>品牌名称：</label>
				<div class="formControls col-xs-8 col-sm-9">

					<input style="display: none" type="text" class="input-text" placeholder="品牌ID" name="id" value="${auto_type.id}">
					<input type="text" class="input-text" placeholder="品牌名称" name="name" value="${auto_type.name}">
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
					<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;修改&nbsp;&nbsp;">
				</div>
			</div>
		</form>
	</article>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="../statics/js/jquery.min.js"></script>
	<script type="text/javascript" src="../statics/js/layer.js"></script>
	<script type="text/javascript" src="../statics/js/H-ui.min.js"></script>
	<script type="text/javascript" src="../statics/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="../statics/js/WdatePicker.js"></script>
	<script type="text/javascript" src="../statics/js/jquery.validate.js"></script>
	<script type="text/javascript" src="../statics/js/validate-methods.js"></script>
	<script type="text/javascript" src="../statics/js/messages_zh.js"></script>
	<script src = "../../statics/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		//加载事件
		$(function () {
			$("#form-member-add").submit(function () {

				parent.location.href="/user/autoTypeSelete.html";
			})
		})
	</script>
	<!--/请在上方写此页面业务相关的脚本-->
	</body>

</html>