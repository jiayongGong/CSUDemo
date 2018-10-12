<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>CSU汉语桥</title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="../css/style-700e1b06d4954b39720a47ba0f8fa52ae1d2a386.css" rel="stylesheet">
	<link href="../css/menu.css" rel="stylesheet">
	<link href="../css/bootstrap-theme.css" rel="stylesheet">
	<link href="../css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="../css/bootstrap.css" rel="stylesheet">
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
  </head>


  <body>
		<div id ="wrapper">
		<!--<div class="overlay" data-component="overlay"></div>-->
		<header class="c-header" data-component="header" >
    
        <div class="c-header--wrapper">
    
            <div class="c-header--logo">
                <a class="c-header--log--link" href="/en/">
                    
                    <img alt="Logo" src="../img/logo.jpg" >
                      
                </a>
            </div>
    
            <div class="c-header--navigation">
    
                <nav class="c-header--navigation--primary is-collapsed menu" data-component-element="navigation">
                             
                   <li  onmouseover="display(this)" onmouseout="hide(this)" class="dropdown" > 
                    	
                    	<a href="ViewCourseList" onmouseover="display(this)" onmouseout="hide(this)" class="c-header--navigation--link" >
                                                  课程
                        </a>
                                       
                    <ul id="class-list" class ="dropdown-menu" onmouseover="late()">
                    <li><a href="#">校园</a></li>
                    <li><a href="#">出行</a></li>
                    <li><a href="#">饮食</a></li>
                    <li><a href="#">看病</a></li>                   
                    <li><a href="#">交友</a></li>
                    <li><a href="#">购物</a></li>
                    </ul>
                   </li>
                  
                   <li  onmouseover="display(this)" onmouseout="hide(this)" class="dropdown" > 
                    <a class="c-header--navigation--link " href="scene.html">
                                                  练习
                    </a>
                   </li>
                   <li  onmouseover="display(this)" onmouseout="hide(this)" class="dropdown" > 
                    <a class="c-header--navigation--link " href="/en/support">
                                                  交际
                    </a>
                   </li> 
                   <li  onmouseover="display(this)" onmouseout="hide(this)" class="dropdown" > 
                    <a class="c-header--navigation--link " href="/en/support">
                                                  文化
                    </a>
                   </li> 
                   <li  onmouseover="display(this)" onmouseout="hide(this)" class="dropdown" > 
                    <a class="c-header--navigation--link " href="/en/support">
                                                  资源
                    </a>
                   </li> 
                </nav>
    
                <nav class="c-header--navigation--primary is-collapsed">
                <div class="input-group" style="height: 40px;width:300px">
                         <input type="text" placeholder="搜索你感兴趣的课程" autocomplete="on" class="form-control input-lg" style="width:100%;"><span class="input-group-addon btn">搜索</span>
                        </div>
                </nav>
    
    
    
    
                <nav class="c-header--navigation--secondary">
    
                  
                        <button onclick="openLogin();" class="c-header--navigation--button c-button" data-component="sign-up-button">
                                                    登录
                        </button>
                        <button onclick="openRegister();" class="c-header--navigation--link c-header--navigation--hideable" data-component="sign-in-button">
                                                   注册
                        </button>
                        
                       
    
                </nav>
    
                <button class="c-header--navigation--toggle" data-component-element="navigation-button"></button>
    
            </div>
    
    
        </div>
    
    </header>
	<script type="text/javascript">
	function openRegister(){
		window.location.replace("../main/register.jsp");
	}
	
	function openLogin(){
		window.location.replace("../main/login.jsp");
	}
	</script>