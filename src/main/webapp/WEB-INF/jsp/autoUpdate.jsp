<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>车辆修改</title>
	</head>

	<script src="../static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
			$("#myform").submit(function(){
				var Id = $("input[name='Id']").val();
				var autoName = $("input[name='autoName']").val();
				var production = $("input[name='production']").val();
				var autoTypeId = $("select[name='autoTypeId']").val();
				var autoColor = $("input[name='autoColor']").val();
				var autoMoney = $("input[name='autoMoney']").val();

				if(Id == "" || Id == null){
					alert("车辆编号不能为空");
					return false;
				}else if(autoName == "" || autoName == null){
					alert("车辆名称不能为空");
					return false;
				}else if(production == "" || production == null){
					alert("出厂日期不能为空");
					return false;
				}else if(autoTypeId == 0){
					alert("车辆品牌不能为空");
					return false;
				}else if(autoColor == "" || autoColor == null){
					alert("车辆颜色不能为空");
					return false;
				}else if(autoMoney == "" || autoMoney == null){
					alert("车辆价格不能为空");
					return false;
				}
			})

		})
	</script>
	<style type="text/css">
		#mydiv{
			width: 500px;
			height: 500px;
			background-color: #C2C2C2;
			border-radius: 40px;
			position: absolute;
			top: 50px;
			left: 400px;
			border: 1px solid;
			opacity:0.8;
		}
		input{
			width: 200px;
			height: 22px;
			font-family: "楷体";
		}
		tr{
			font-family: "楷体";
			font-weight: bold;
			display:block; /*将tr设置为块体元素*/
			margin:10px ;  /*设置tr间距为2px*/

		}
		select{
			font-family: "楷体";
			/*background: transparent;*/
			width: 205px;
			padding: 5px;
			/*font-size: 16px;*/
			border: 1px solid #ccc;
			height: 30px;
			-webkit-appearance: none; /*for chrome*/
		}
	</style>
	<body>

	<img src="../static/images/timg.jpg" height="650px" width="100%" />
	<div id="mydiv">
		<form action="" method="post" id="myform">
			<table align="center">
				<tr>
					<th><h1>车辆修改(根据编号修改信息)</h1></th>
				</tr>

				<tr>
					<td>车辆编号:</td>
					<td><input type="text" name="Id"></td>
				</tr>
				<tr>
					<td>车辆名称:</td>
					<td><input type="text" name="autoName"></td>
				</tr>
				<tr>
					<td>出厂时间:</td>
					<td><input type="text" name="production"></td>
				</tr>
				<tr>
					<td>车辆品牌:</td>
					<td>
						<select name="autoTypeId">
							<option value="0">--请选择品牌--</option>
							<option value="1">兰博基尼</option>
							<option value="2">法拉利</option>
							<option value="3">保时捷</option>
							<option value="4">奔驰</option>
						</select></td>
				</tr>
				<tr>
					<td>车辆颜色:</td>
					<td><input type="text" name="autoColor"></td>
				</tr>
				<tr>
					<td>车辆价格:</td>
					<td><input type="text" name="autoMoney">（元）</td>
				</tr>
				<tr>
					<td>车辆图片:</td>
					<td><input type="file" name="autoImg"></td>
				</tr>
				<tr>
					<td align="center">
						<input type="submit" value="提交">
						<input type="button" value="重置">
					</td>
				</tr>
			</table>
		</form>
	</div>
	</body>
</html>