<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />
<%
	request.setCharacterEncoding("utf-8");
%>
<div class="container">
	<h1>Schedule</h1>
	<div>
		<h3>${user.name }일정 등록</h3>

		<div style="color: red">${error }</div>
		<form action="${pageContext.request.contextPath }/schedule" method="post">
			<table class="table">
				<tr>
					<td>what :</td>
					<td><input type="text" name="what" id="what"></td>
				</tr>
				<tr>
					<td>desc :</td>
					<td><input type="text" name="desc" id="desc"></td>
					
				</tr>
			
				<tr>
					<td colspan="1">
						<input type='submit' value="등록">
					</td>
				</tr>
			</table>

		</form>
	</div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />
