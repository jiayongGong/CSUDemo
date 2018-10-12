<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/top.jsp"%>
  
   <main>
     

<article>
	
	

    <section id="templates">


       
            <div class="row">
            	 <div class="container-fluid">
            	  <div id="myCarousel" class="carousel slide" style="margin: 0 auto;width:100%;height: 22%;" data-ride="carousel">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner" style="width: 100%;height: 22%">
        <div class="item active">
            <img src="../img/slide1.jpg" alt="First slide"  class="center-block">
        </div>
        <div class="item">
            <img src="../img/slide2.jpg" alt="Second slide"  class="center-block">
        </div>
        <div class="item">
            <img src="../img/slide3.jpg" alt="Third slide"  class="center-block">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left"  style="width: 10%;" href="#myCarousel" 
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" style="width: 10%;" href="#myCarousel" 
        data-slide="next">&rsaquo;
    </a>
</div>

            	
                <div class="templates-list templates-grid" data-component="templates-list" style="width: 100%;">
                	
                  
                        
                            <a class="card template-card" style="background-image: url(../img/icon_chinese.jpg);" href="map.html">
                            	
                              
                              
                            </a>
                        
                            <a class="card template-card" style="background-image: url(../img/icon_course.jpg)" href="ViewCourseList">
                                
                            </a>
                        
                            <a class="card template-card" style="background-image: url(../img/icon_culture.jpg)" href="/en/templates/events">
                                
                            </a>
                        
                            <a class="card template-card" style="background-image: url(../img/icon_practice.jpg)"  href="/en/templates/custom-crm">
                               
                            </a>
                            
                        <a class="card template-card" style="background-image: url(../img/icon_info.jpg)"  href="/en/templates/custom-crm">
                               
                              
                               
                            </a>
                
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
