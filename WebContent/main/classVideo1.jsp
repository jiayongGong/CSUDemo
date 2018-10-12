<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

			<main>

				<article>
					<section id="templates">

						<div class="container">
							<div class="row ">
								<div class="line"></div>
								
								
								
								<div id="youku-playerBox" style="width: 90%; height: 800px;position: absolute;">
									<div class="x-player">
										<div class="ykplayer">

											<div class="x-video-player">

<div class="span2" style="float: right;width: 20%;height:800px;overflow-y:auto;">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#">目录</a></li>
                
                <c:forEach var="classes" items="${sessionScope.classList}">
                
<li><a href="OpenClassVideo?classId=${classes.id}">${classes.name}</a></li>
</c:forEach>
               
                   
            </ul>
        </div>
                                               <object height="800px" width="80%" data="${sessionScope.classes.video}"></object>
                                               <!--<video style="width: 80%; height: 100%; position: relative;" controls>
                                                <source src="${sessionScope.course.video}" type="video/mp4">
                                                 </video>
												<video id="xplayer1519988566789" webkit-playsinline="true" playsinline="true" poster="" style="width: 80%; height: 100%; display: block; position: relative;">
												<source src="${sessionScope.classes.video}" type="video/mp4">
												</video>--> 
											</div>



										</div>

									</div>
									
								

									<div class="share">
										<ul class="list-inline center">
											<li>
												<a href="#" class="btn"> Share</a>
											</li>
											<li>
												<a href="#" class="btn "> QQ</a>
											</li>
											<li>
												<a href="#" class="btn ">Tweet</a>
											</li>
											<li>
												<a href="#" class="btn "> Google+</a>
											</li>
											<li>
												<a href="#" class="btn ">E-mail</a>
											</li>
										</ul>
									</div>
									
<div>
<a href="OpenClassPractice?classesId=${sessionScope.classes.id}">课后练习</a>
</div>
									<div class="comment">
										<h3> Comment</h3>
<input type="text" id="mycomment" name="mycomment">
<button onclick="upcomment();">留言</button>
<div id="commentArea">
	
	
							
									
									
									</div>
									<nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a id="page0" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a id="page1">1</a></li>
    <li><a id="page2">2</a></li>
    <li><a id="page3">3</a></li>
    <li><a id="page4">4</a></li>
    <li><a id="page5">5</a></li>
    <li>
      <a id="page6" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
      
    </li>
  </ul>
</nav>
									<div class="line"></div>

								</div>

								
							
								
							</div>

					</div>
					</section>
				</article>
			</main>

			
			<script>
			
			$(document).ready(function(){
				upcomment();
				var pagenow=1;
				$("#page0").click(function(){
					var pageTo = pagenow - 1;
					pagenow = pageTo;
					
					if(pageTo<1){
						$("#page1").text(1);
						$("#page2").text(2);
						$("#page3").text(3);
						$("#page4").text(4);
						$("#page5").text(5);
					}
					else{
						$("#page1").text(pageTo);
						$("#page2").text(pageTo+1);
						$("#page3").text(pageTo+2);
						$("#page4").text(pageTo+3);
						$("#page5").text(pageTo+4);
						sendRequest("CutPage?pageTo="+pageTo);
						
					}
					
				});
				$("#page1").click(function(){
					var pageTo = Number($("#page1").text());
					pagenow = pageTo;
					if(pageTo - 2<1){
						$("#page1").text(1);
						$("#page2").text(2);
						$("#page3").text(3);
						$("#page4").text(4);
						$("#page5").text(5);
					}
					else{
						$("#page1").text(pageTo-2);
						$("#page2").text(pageTo-1);
						$("#page3").text(pageTo);
						$("#page4").text(pageTo+1);
						$("#page5").text(pageTo+2);
						
					}
					sendRequest("CutPage?pageTo="+pageTo);
				});
				$("#page2").click(function(){
					var pageTo = $("#page2").text();
					pagenow = pageTo;
					sendRequest("CutPage?pageTo="+pageTo);
					
				});
				$("#page3").click(function(){
					var pageTo = $("#page3").text();
					pagenow = pageTo;
					sendRequest("CutPage?pageTo="+pageTo);
				});
				$("#page4").click(function(){
					var pageTo = $("#page4").text();
					pagenow = pageTo;
					sendRequest("CutPage?pageTo="+pageTo);
				});
				
				$("#page5").click(function(){
					var pageTo = Number($("#page5").text());
					pagenow = pageTo;
						$("#page1").text(pageTo-2);
						$("#page2").text(pageTo-1);
						$("#page3").text(pageTo);
						$("#page4").text(pageTo+1);
						$("#page5").text(pageTo+2);
					
					
					sendRequest("CutPage?pageTo="+pageTo);
				});
				
				$("#page6").click(function(){
					var pageTo = pagenow + 1;
					pagenow = pageTo;
					
						$("#page1").text(pageTo-4);
						$("#page2").text(pageTo-3);
						$("#page3").text(pageTo-2);
						$("#page4").text(pageTo-1);
						$("#page5").text(pageTo);
						sendRequest("CutPage?pageTo="+pageTo);
						
					
					
				});
				
				});
				
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

			function CutPage(){
				
			}
			
			
			
			function upcomment(){
				
				var mycomment = document.getElementById("mycomment").value;
				document.getElementById("mycomment").value = "";
				if(mycomment!="")
				    sendRequest("UpMyComment?mycomment="+ mycomment +"&classId=${sessionScope.classes.id}");
				else
					sendRequest("UpMyComment?mycomment="+"null"+"&classId=${sessionScope.classes.id}");
				
			}
			


			function sendRequest(url){
				createXMLHttpRequest();
				xmlHttpRequest.open("GET",url,true);
				xmlHttpRequest.setRequestHeader("If-Modified-Since","0");
				xmlHttpRequest.onreadystatechange = processResponse;
				
				xmlHttpRequest.send(null);
			}

			function processResponse(){
				
				if(xmlHttpRequest.readyState==4){
					
					if(xmlHttpRequest.status==200){
						
						var result = xmlHttpRequest.responseText;
						
						var json = eval("("+result+")");
						var element=document.getElementById("commentArea");
						element.innerHTML = "";
						setContent(json);
			          
					}
				}
			}

			function setContent(contents){
				var size = contents.length;
				for(var i=0;i<size;i++){
					var comment = contents[i].name;
					var para=document.createElement("p");
					var node=document.createTextNode(comment);
					para.appendChild(node);
					var element=document.getElementById("commentArea");
					element.appendChild(para);
				}
			}
			
			
				var t;
				/*-----显示子菜单-----*/
				function display(li) {
					var subNav = li.getElementsByTagName("ul")[0]; /*获取下拉菜单的信息*/
					subNav.style.display = "block"; /*菜单中的信息以块的形式展示*/
				}
				/*-----隐藏子菜单-----*/
				function hide(li) {
					var subNav = li.getElementsByTagName("ul")[0];

					t = setTimeout(function(e) {
						subNav.style.display = "none";
					}, 100)
				}

				function late() {
					clearTimeout(t);
				}
			</script>

			<script src="../js/jquery-3.2.1.js"></script>
			<script src="../js/jquery-3.2.1.min.js"></script>
			<script src="../js/bootstrap.js"></script>
			<script src="../js/bootstrap.min.js"></script>
	</body>

</html>