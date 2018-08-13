<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<div class="container">
		<h1>Schedule Manager</h1>

		<c:choose>
			<c:when test="${empty user }">
				<h3>-일정관리 프로그램 입니다-
				</h3>
				
				<p>일정관리 프로그램으로 join에서 회원가입을 하고 schedule에서 스케쥴을 추가하고 삭제,수정이 가능하다.
				profile에서 스캐쥴 확인가능
				   
				</p>
			</c:when>
			<c:otherwise> 
				<h3>${user.name }님, 환영합니다</h3>
				<p></p>
				
				
				
			</c:otherwise>
		</c:choose>
	
	</div>

<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />

<script>
	if ('${param.logout}' == 'success'){
		alert("로그아웃 성공")
	}
</script>
