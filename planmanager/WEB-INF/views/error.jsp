<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<div class="container">
		
		<div>
			<h3>
				Error Page
			</h3>
			<h4>
				${error }
			</h4>
		</div>
	</div>

<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />