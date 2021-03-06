<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>修改车辆配置</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />

		<!--/meta 作为公共模版分离出去-->

	</head>

	<body>
	<article class="page-container">
		<form action="/user/configurationUpdateCon.html" method="post" class="form form-horizontal" id="form-member-add">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车编号：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input style="display: none" type="text" name="id" class="input-text" value="${configuration.id}" placeholder="汽车编号">
					<input type="text" class="input-text" name="autoId" value="${configuration.autoId}" placeholder="汽车编号">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>发动机：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="engine" value="${configuration.engine}" placeholder="发动机">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>变速箱：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="gearbox" value="${configuration.gearbox}" placeholder="变速箱">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>最高时速：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="speed" value="${configuration.speed}" placeholder="最高时速">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>排量：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="displacement" value="${configuration.displacement}" placeholder="排量">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>驱动方式：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="drive" value="${configuration.drive}" placeholder="驱动方式">
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

				parent.location.href="/user/configurationSelete.html";
			})
		})
	</script>
	<!--/请在上方写此页面业务相关的脚本-->
	</body>

</html>