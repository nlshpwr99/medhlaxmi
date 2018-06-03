<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="adcss" value="/resources/admin" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Khozema Nullwala">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>

<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">
<link href="${css}/myapp.css" rel="stylesheet">

<%--   <%@include file="css.jsp"%> --%>
</head>

<body>
	
	<div class="se-pre-con"></div>
	<div class="wrapper">

		<!-- Navigation -->
		<%-- <%@include file="./shared/navbar.jsp"%> --%>

		<!-- Page Content -->

		<!-- <div class="bodyContainer"> -->
			
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
			<%@include file="./shared/navbar.jsp"%>
		        <div class="bodyContainer">
				<%@include file="home.jsp"%>
				</div>
			</c:if>

			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
			<%@include file="./shared/navbar.jsp"%>
		        <div class="bodyContainer">
				<%@include file="about.jsp"%>
				</div>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
			<%@include file="./shared/navbar.jsp"%>
		        <div class="bodyContainer">
				<%@include file="contact.jsp"%>
				</div>
			</c:if>
			
			<!-- Load only when user clicks contact -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true }">
			<%@include file="./shared/navbar.jsp"%>
		        <div class="bodyContainer">
				<%@include file="listProducts.jsp"%>
				</div>
			</c:if>	
			
			
			<!-- Load only when user clicks show product -->
			<c:if test="${userClickShowProduct == true}">
			<%@include file="./shared/navbar.jsp"%>
		        <div class="bodyContainer">
				<%@include file="singleProduct.jsp"%>
				</div>
			</c:if>								

			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickManageProduct == true}">
		        <div class="bodyContainer">
				<%@include file="manageProduct.jsp"%>
				</div>
			</c:if>	

			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickShowCart == true}">
			<%@include file="./shared/navbar.jsp"%>
		        <div class="bodyContainer">
				<%@include file="cart.jsp"%>
				</div>
			</c:if>	

		<!-- </div> -->


		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

		<script src="${js}/jquery.js"></script>
		<script src="${js}/jquery.validate.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/jquery.dataTables.js"></script>
		<script src="${js}/dataTables.bootstrap.js"></script>
		<script src="${js}/bootbox.min.js"></script>
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>