<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<div style="height:100px;width:100px;"></div>
<br>
<br>
<br>
<c:forEach var="Practice" items="${sessionScope.practiceList}" varStatus="status">
<div>
<a>${Practice.id}</a><a>..    </a><a>${Practice.name}</a><a>   参考答案  ：</a><a><u>${Practice.correct}</u></a>
<br>
<input type="radio" name="${Practice.id}" value="1">${Practice.answer1}
<br>
<input type="radio" name="${Practice.id}" value="2">${Practice.answer1}
<br>
<input type="radio" name="${Practice.id}" value="3">${Practice.answer1}
<br>
<input type="radio" name="${Practice.id}" value="4">${Practice.answer1}
</div>
</c:forEach>
<button>提交</button>






<script type="text/javascript">

$(document).ready(function(){
	$("u").hide();
	  $("button").click(function(){
		  $("u").show();
	  });
	});
</script>
</body>
</html>