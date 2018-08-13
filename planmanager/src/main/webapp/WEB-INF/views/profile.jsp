<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<div class="container">
		<h1>${user.id } Profile </h1>
		<div>
			
			<table class="table">
				<tr>
					<th>이름</th>
					<th>tel</th>
					<th>addr</th>
				</tr>
				<tr>
				    <td>${user.name }</td>
					<td>${user.tel }</td>
					<td>${user.addr }</td>
					<td></td>
				
				</tr>
			</table>
			<h3>
				Schedule
			</h3>
			<table class="table">
				<tr>
					<th>what</th>
					<th>desc</th>
					
				</tr>
				<c:forEach items="${applys }" var="application">
					<tr>
					
						<td>${application.plan }</td>
						<td>${application.plandesc } </td>
					
						<td>
								<a href="${pageContext.request.contextPath }/delete?id=${application.id }">Delete</a>
						</td>
					</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>

<script>
	if ('${param.msg}' == 'success') {
		alert("일정등록  성공");
	}
	
	if ('${del_msg}' == 'success') {
		alert("일정 삭제 성공");
	} else if ('${del_msg}' == 'failure'){
		alert("일정을 삭제하는데 문제가 발생하였습니다");
	}
</script>
<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />
