<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="renderer" content="webkit">
		<title>登录 - CSU汉语桥</title>
		<meta name="keywords" content="CSU,汉语学习">
		<!--//似乎和QQ登录有关
		<meta property="qc:admins" content="1603466166416707343016163757477167">-->

		<link href="../css/login/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="../css/login/common.css" rel="stylesheet" type="text/css">
		<link href="../css/login/login.css" rel="stylesheet" type="text/css">

		<style type="text/css">
			.fancybox-margin {
				margin-right: 0px;
			}
		</style>

	</head>

	<body>

		<div id="wrapper">
			<div class="aw-login-box">
				<div class="mod-body clearfix">
					<div class="content pull-left">
						<h1 class="logo"><a href="#"><img alt="Logo" src="../img/logo.jpg" ></a></h1>
						
						<h2>CSU汉语桥</h2>
						
							<ul>
								<li>
									<input type="text" id="id" class="form-control" placeholder="账号" name="id">
								</li>
								<li>
									<input type="password" id="password" class="form-control" placeholder="密码" name="password">
								</li>
								<!--错误提示框
						<li class="alert alert-danger hide error_message">
							<i class="icon icon-delete"></i> <em></em>
						</li>-->
								<li class="last">
									<button onclick="uplogin();">登录</button>
									<label>
								<input type="checkbox" value="1" name="net_auto_login">
								记住我							
							</label>
									<a href="#/account/find_password/">&nbsp;&nbsp;忘记密码</a>
								</li>
							</ul>
						
					</div>
					<div class="side-bar pull-left">
						<h3>第三方账号登录</h3>
						<a href="http://wenda.ghostchina.com/account/openid/qq_login/" class="btn btn-block btn-qq" style="background: url(img/qq-login.png);"> QQ登录</a>
					</div>
				</div>
				<div class="mod-footer">
					<span>还没有账号?</span>&nbsp;&nbsp;
					<a href="#链接到注册页">立即注册</a>

				</div>
			</div>
		</div>

		<div class="aw-footer-wrap">
			<div class="aw-footer">
				Copyright © 2018<span class="hidden-xs"> - 京ICP备11008151号, All Rights Reserved</span>

				<span class="hide">Powered By WeCenter 3.0 Beta 2</a></span>

			</div>
		</div>

<script type="text/javascript">

var xmlHttpRequest;

function createXMLHttpRequest(){
	if(window.XMLHttpRequest){
		xmlHttpRequest = new XMLHttpRequest();
	}
	else if(window.ActiveObject){
		xmlHttpRequest = new ActiveObject("Msxm12.XMLHTTP");
	}
	else{
		xmlHttpRequest = new ActiveObject("Microsoft.XMLHTTP");
	}
}

function uplogin(){
	
	var id = document.getElementById("id").value;
	var password = document.getElementById("password").value;
	sendRequest("UserLogin?id=" + id + "&password=" + password);
}

function sendRequest(url){
	createXMLHttpRequest();
	xmlHttpRequest.open("GET",url,true);
	xmlHttpRequest.onreadystatechange = processResponse;
	xmlHttpRequest.send(null);
}

function processResponse(){
	
	if(xmlHttpRequest.readyState==4){
		
		if(xmlHttpRequest.status==200){
			
			var responseinfo = xmlHttpRequest.responseXML.getElementsByTagName("msg")[0].firstChild.data;
			if(responseinfo=="error"){
				alert("账号或密码错误！");
			}
			else if(responseinfo=="success"){
				
				window.location.replace("../main/main.jsp");
			}
		}
	}
}

</script>
</body>
</html>