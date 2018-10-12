<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  


<main>

	<article>
		<section id="templates">

			
				<div class="row" style="width:100%;background-image: url(img/bg.png);">
					
					<div class="container">
					<div style="width:100%;height:200px;">
						<h1 style="font-family: '微软雅黑';color: #FFFFFF;">课程名称</h1>
						
						<h4 style="margin-top: 60px">
							<button class="btn btn-info" >进入学习</button>
							<!--<button class="btn btn-info" style="margin-right: 800px;background-image: url(img/icon_course.png);" ></button>
							<button class="btn btn-info" >进入学习</button>-->
						</h4>
						
						
					</div>
				

				</div>

			</div>
			
			    <div class="container">
			    	<h3>课程简介:</h3>
			    	<textarea class="form-control" rows="9" style="border: ;width: 50%;">${sessionScope.coursess.description}</textarea>
			    	<div class="btn btn-group" style="margin-top:30px;" >
			    		  <button type="button" class="btn btn-default" style="border: hidden;" >课程章节</button>
	                      <button type="button" class="btn btn-default" style="border: hidden;">课后评论</button>
	                      <button type="button" class="btn btn-default" style="border: hidden;">问答留言</button>	                      
			    	</div>
			    	<div class="line" style="width: 55%;margin-top:5px;"></div>
			    	
			    	<div class="panel-group" id="accordion" style="width: 55%;">
	
<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseOne">
					第一章 xxxxxxxxxxx
				</a>
			</h4>
		</div>
		<c:forEach var="classes" items="${sessionScope.classList}">
		<div id="collapseOne" class="panel-collapse collapse in">
			<div class="panel-body">
				<a href="OpenClassVideo?classId=${classes.id}">${classes.name}</a>
			</div>
		</div>
		</c:forEach>
	</div>
	
	
	<div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" 
                href="#collapseTwo">
                第二章 xxxxxxxxxxx
            </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse">
        <div class="panel-body">
            <a href="course.html">2-1节</a>
        </div>
        </div>
    </div>
			    	
			    	</div>
	
			    </div>
		</section>
	</article>
</main>
								
	

		</div>
		
	<footer class="c-footer">
    
        <div class="c-footer--wrapper">
    
            <div class="c-footer--columns">
    
                <div class="c-footer--column">
    
                    <p class="c-footer--column--title">
                        Ninox Software GmbH
                    </p>
    
                    
                </div>
    
                <div class="c-footer--column">
    
                    <p class="c-footer--column--title">
                        Language
                    </p>
    
                   
    
                </div>
    
                <div class="c-footer--column">
    
                    <p class="c-footer--column--title">
                        Products
                    </p>
    
                    
                </div>
    
                <div class="c-footer--column">
    
                    <p class="c-footer--column--title">
                        Support
                    </p>
    
                    
                </div>
    
                <div class="c-footer--column">
    
                    <p class="c-footer--column--title">
                        Contact Us
                    </p>
    
                    
    
                </div>
    
            </div>
    
            <!--<div class="c-footer--columns">
    
                <div class="c-footer--column">
    
                   <p class="c-footer--column--title">
                        Language&nbsp;&nbsp;
                         <a href="/en/templates" class="c-footer--link  is-active">EN</a>
                                <span>&nbsp;/&nbsp;</span>
                                <a href="/de/templates" class="c-footer--link ">DE</a>
                    </p>
    
                    
    
                </div>-->
    
                <!--<div class="c-footer--column">
    
                    <p class="c-footer--footnote c-footer--column--text">
                        © 2017 Ninox
                    </p>
    
                    <a href="/en/imprint" class="c-footer--link c-footer--footnote">
                        Imprint
                    </a>
    
                    <a href="/en/terms" class="c-footer--link c-footer--footnote">
                        Terms &amp; Conditions
                    </a>
    
                    <a href="/en/privacy" class="c-footer--link c-footer--footnote">
                        Privacy
                    </a>
    
                </div>-->
                
                <h5 style="color: #FFFFFF;margin-left: 30%;margin-bottom: 5%;">Copyright © 2018 - 京ICP备11008151号, All Rights Reserved</h5>
    
    
            </div>
    
        </div>
    
    </footer>
  	
		
		
		
		 <script>
  	var t;
/*-----显示子菜单-----*/
function display(li) {
var subNav = li.getElementsByTagName("ul")[0];/*获取下拉菜单的信息*/
subNav.style.display = "block"; /*菜单中的信息以块的形式展示*/
}
/*-----隐藏子菜单-----*/
function hide(li) {
	var subNav = li.getElementsByTagName("ul")[0];
	
t=setTimeout(function(e){
  subNav.style.display = "none";},100)
}
function late(){
	 clearTimeout(t);
}
</script>


<script src="../js/jquery-3.2.1.js"></script>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
	</body>
</html>
