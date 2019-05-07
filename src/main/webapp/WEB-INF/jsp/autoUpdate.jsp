<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>车辆修改</title>
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="../statics/fonts/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../statics/css/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="../statics/css/style.css" />

		<!--/meta 作为公共模版分离出去-->
	</head>

	<body>
	<article class="page-container">
		<form action="#" method="post" class="form form-horizontal" id="form-member-add">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车名称：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="汽车名称">
				</div>
			</div>

			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车出厂日期：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="汽车出厂日期">
				</div>
			</div>

			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车品牌：</label>
				<div class="formControls col-xs-8 col-sm-9">
						<span class="select-box">
							<select class="select" size="1" name="city">
								<option value="0" selected>--请选择汽车品牌--</option>
								<option value="1">兰博基尼</option>
								<option value="2">法拉利</option>
								<option value="3">保时捷</option>
							</select>
						</span>
				</div>
			</div>

			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车价格：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="汽车价格">
				</div>
			</div>

			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">汽车图片：</label>
				<div class="formControls col-xs-8 col-sm-9">
						<span class="btn-upload form-group">
							<input class="input-text upload-url" type="text" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
							<a href="javascript:;" class="btn btn-primary radius upload-btn">浏览文件</a>
							<input type="file" multiple name="file-2" class="input-file">
						</span>
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

	<!--/请在上方写此页面业务相关的脚本-->
	</body>

</html>