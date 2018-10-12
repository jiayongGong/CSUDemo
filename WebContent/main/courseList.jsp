<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

	<main>

				<article>
					<section id="templates">
						<div class="container">
							<div class="row ">
	                          <h3 style="font-size: 17px;font-family: '微软雅黑';color: #666666;margin-top:10%;margin-left: 20px;"><a href="main.jsp" style="font-size:large">首页></a>&nbsp;全部课程</h3>
	       
	                         <div class="btn-group" style="background-color: ;width: 100%;margin-top: 50px;margin-left: 20px;">
	                         	    <h4 >课程分类:
	                         	     <button type="button" class="btn btn-default" >全部</button>
	                         	     <button type="button" class="btn btn-default" >校园</button>
	                         	 	 <button type="button" class="btn btn-default" >出行</button>
	                         	 	 <button type="button" class="btn btn-default" >饮食</button>
	                         	 	 <button type="button" class="btn btn-default" >购物</button>
	                         	 	 <button type="button" class="btn btn-default" >交友</button>
	                         	 	 <button type="button" class="btn btn-default" >旅游</button>
	                         	 	 </h3>
	                         </div>
	                         
	                         <div class="line"></div>
	                         
	                      <div class="templates-list" data-component="templates-list" style="width: 70%;margin-left: 0px;">

                             <c:forEach var="course" items="${sessionScope.courseList}">
                             <a class="card template-card" style="width:100%;"  href="ViewClassList?courseId=${course.id}">
                                <!--<img class="template-icon" style="background-color:#56BC8A" alt="Meetings" src=".png">-->
                                <h3 class="template-name">
                                	<img  class="left" src="../img/pkq.jpg">
                                	${course.name}
                                	<p class="template-descr">${course.description}</p>
                                </h3>
                              
                            </a>
                            
                          </c:forEach> 

                        
                           
                
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
    
                
                <h5 style="color: #FFFFFF;margin-left: 30%;">Copyright © 2018 - 京ICP备11008151号, All Rights Reserved</h5>
    
    
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
