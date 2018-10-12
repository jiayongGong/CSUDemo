<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html>

	<head>
		<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="renderer" content="webkit">
		<title>注册 - CSU汉语桥</title>
		<meta name="keywords" content="注册,CSU,汉语学习">
		<!--//似乎和QQ登录有关
		<meta property="qc:admins" content="1603466166416707343016163757477167">-->

		<link href="../css/login/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="../css/common.css" rel="stylesheet" type="text/css">
		<link href="../css/register/register.css" rel="stylesheet" type="text/css">

	</head>

	<body>

		<div class="aw-register-box">
			<div class="mod-head">
				<a href="#">LOGO<img src="logo.png" alt=""></a>
				<h1>注册新用户</h1>
			</div>
			<div class="mod-body">
				<form class="aw-register-form" action="register" method="post" id="register_form" name="registForm">

					<ul>
						<li class="alert alert-danger hide error_message text-left">
							<i class="icon icon-delete"></i> <em></em>
						</li>
						<li>
							<input class="aw-register-name form-control" type="text" name="id" id="userid" placeholder="账号" onblur="userIsExist();" onfocus="clearall1();">
						    <a id="idMsg"></a>
						</li>
						<li>
							<input class="aw-register-email form-control" type="text" placeholder="密码" name="password" id="password" >
						</li>
						<li>
							<input class="aw-register-email form-control" type="text" placeholder="密码确认" id="passwordcheck" name="passwordcheck" onblur="checkpassword();" onfocus="clearall2();" >
						    <a id="pscheck"></a>
						</li>
						<li>
							<input class="aw-register-email form-control" type="text" placeholder="昵称" id="name" name="name"  >
						</li>
						<li>
							<input class="aw-register-email form-control" type="text" placeholder="邮箱" name="email" id="email">
						</li>

                        <li>
							<hr>
							<a class="more-information-btn">更多资料</a>
						</li>
						<li class="more-information ">
					<ul>
						<li>
							性别:
							<label>
								<input name="sex" id="sex" value="1" type="radio"> 男							</label>&nbsp; 
							<label>
								<input name="sex" id="sex" value="2" type="radio"> 女 </label>&nbsp; 
							<label>
								<input name="sex" id="sex" value="3" type="radio" checked="checked"> 保密							</label> 
						</li>
						<!--<li>
							:
							<select name="job_id">
								<option value="">--</option>
								<option value="1">销售</option><option value="2">市场/市场拓展/公关</option><option value="3">商务/采购/贸易</option><option value="4">计算机软、硬件/互联网/IT</option><option value="5">电子/半导体/仪表仪器</option><option value="6">通信技术</option><option value="7">客户服务/技术支持</option><option value="8">行政/后勤</option><option value="9">人力资源</option><option value="10">高级管理</option><option value="11">生产/加工/制造</option><option value="12">质控/安检</option><option value="13">工程机械</option><option value="14">技工</option><option value="15">财会/审计/统计</option><option value="16">金融/银行/保险/证券/投资</option><option value="17">建筑/房地产/装修/物业</option><option value="18">交通/仓储/物流</option><option value="19">普通劳动力/家政服务</option><option value="20">零售业</option><option value="21">教育/培训</option><option value="22">咨询/顾问</option><option value="23">学术/科研</option><option value="24">法律</option><option value="25">美术/设计/创意</option><option value="26">编辑/文案/传媒/影视/新闻</option><option value="27">酒店/餐饮/旅游/娱乐</option><option value="28">化工</option><option value="29">能源/矿产/地质勘查</option><option value="30">医疗/护理/保健/美容</option><option value="31">生物/制药/医疗器械</option><option value="32">翻译（口译与笔译）</option><option value="33">公务员</option><option value="34">环境科学/环保</option><option value="35">农/林/牧/渔业</option><option value="36">兼职/临时/培训生/储备干部</option><option value="37">在校学生</option><option value="38">其他</option>							</select>
						</li>-->
						<li>
							所在城市:
							<select name="province" class="select_area" style="display:inline-block"><option value="">请选择省份或直辖市</option><option value="安徽省">安徽省</option><option value="北京市">北京市</option><option value="福建省">福建省</option><option value="甘肃省">甘肃省</option><option value="广东省">广东省</option><option value="广西壮族自治区">广西壮族自治区</option><option value="贵州省">贵州省</option><option value="海南省">海南省</option><option value="河北省">河北省</option><option value="河南省">河南省</option><option value="黑龙江省">黑龙江省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="吉林省">吉林省</option><option value="江苏省">江苏省</option><option value="江西省">江西省</option><option value="辽宁省">辽宁省</option><option value="内蒙古自治区">内蒙古自治区</option><option value="宁夏回族自治区">宁夏回族自治区</option><option value="青海省">青海省</option><option value="山东省">山东省</option><option value="山西省">山西省</option><option value="陕西省">陕西省</option><option value="上海市">上海市</option><option value="四川省">四川省</option><option value="天津市">天津市</option><option value="西藏自治区">西藏自治区</option><option value="新疆维吾尔自治区">新疆维吾尔自治区</option><option value="云南省">云南省</option><option value="浙江省">浙江省</option><option value="重庆市">重庆市</option><option value="香港">香港</option><option value="澳门">澳门</option><option value="台湾">台湾</option></select>
							
							<select name="city" class="select_area"></select>
						</li>
						
					</ul>
				</li>
				

						

						
						<!--/关于验证码和用户协议-->
						<li class="aw-register-verify">
							<img class="pull-right" id="captcha" onclick="this.src = G_BASE_URL + '/account/captcha/' + Math.floor(Math.random() * 10000);" src="http://wenda.ghostchina.com/account/captcha/">

							<input type="text" class="form-control" name="seccode_verify" placeholder="验证码" data-form-vc="1519979844726.4558">
						</li>
						<li class="last">
							<label><input type="checkbox" checked="checked" value="agree" name="agreement_chk"> 我同意</label>
							<a href="javascript:;" class="aw-agreement-btn">用户协议</a>
							<a href="http://wenda.ghostchina.com/login/" class="pull-right">已有账号?</a>
							
							<div class="aw-regiter-agreement hide">
								<div class="aw-register-agreement-txt" id="register_agreement">当您申请用户时，表示您已经同意遵守本规章。<br> 欢迎您加入本站点参与交流和讨论，本站点为社区，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：
									<br>
									<br> 一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：
									<br> 　（一）煽动抗拒、破坏宪法和法律、行政法规实施的；
									<br> 　（二）煽动颠覆国家政权，推翻社会主义制度的；
									<br> 　（三）煽动分裂国家、破坏国家统一的；
									<br> 　（四）煽动民族仇恨、民族歧视，破坏民族团结的；
									<br> 　（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
									<br> 　（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
									<br> 　（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
									<br> 　（八）损害国家机关信誉的；
									<br> 　（九）其他违反宪法和法律行政法规的；
									<br> 　（十）进行商业广告行为的。
									<br>
									<br> 二、互相尊重，对自己的言论和行为负责。
									<br> 三、禁止在申请用户时使用相关本站的词汇，或是带有侮辱、毁谤、造谣类的或是有其含义的各种语言进行注册用户，否则我们会将其删除。
									<br> 四、禁止以任何方式对本站进行各种破坏行为。
									<br> 五、如果您有违反国家相关法律法规的行为，本站概不负责，您的登录信息均被记录无疑，必要时，我们会向相关的国家管理部门提供此类信息。
								</div>
							</div>

						</li>
						
						<li class="clearfix">
							<button class="btn btn-large btn-blue btn-block" style="pointer-events: auto;">注册</button>
						</li>
					</ul>
				</form>
			</div>
			<div class="mod-footer">
				<span>使用第三方账号直接登录</span>&nbsp;&nbsp;
				<a href="#" class="btn btn-qq" style="background-image: url(img/qq-login.png);"> QQ登录</a>
			</div>
		</div>

		<div class="aw-footer-wrap">
			<div class="aw-footer">
				Copyright © 2018<span class="hidden-xs"> - 京ICP备11008151号, All Rights Reserved</span>

				<span class="hide">Powered By <a href="http://www.wecenter.com/?copyright" target="blank">WeCenter 3.0 Beta 2</a></span>

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

function userIsExist(){
	
	var id = document.registForm.id.value;
	sendRequest("UserIsExist?id="+id);

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
			var div = document.getElementById("idMsg");
			if(responseinfo=="Exist"){
				
				div.innerHTML = "<font color='red'>账号已存在</font>";
			}
			else{
				div.innerHTML = "<font color='green'>账号可用</font>";
			}
		}
	}
}

function checkpassword(){
	var onepassword = document.registForm.password.value;
	var twopassword = document.registForm.passwordcheck.value;
	if(onepassword!=twopassword){
		var a = document.getElementById("pscheck");
		a.innerHTML = "<font color='red'>密码不一致</font>";
	}
	
}
function clearall1(){
	var div = document.getElementById("idMsg");
	div.innerHTML = "";
}

function clearall2(){
	var a = document.getElementById("pscheck");
	a.innerHTML = "";
}
</script>
	</body>

</html>