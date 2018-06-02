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

<%-- <link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">
<link href="${css}/myapp.css" rel="stylesheet"> --%>


<!-- admin css -->

<%-- <link href="${adcss}/bootstrap_dist/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${adcss}/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${adcss}/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="${adcss}/jvectormap/jquery-jvectormap.css"> 
  <link rel="stylesheet" href="${adcss}/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="${adcss}/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="${adcss}/datatables.net-bs/css/dataTables.bootstrap.min.css">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="stylesheet" href="${adcss}/morris.js/morris.css">
  <link rel="stylesheet" href="${adcss}/jvectormap/jquery-jvectormap.css">
  <link rel="stylesheet" href="${adcss}/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="${adcss}/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="${adcss}/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"> --%>
  <%@include file="css.jsp"%>
</head>

<body>
	
	<div class="se-pre-con"></div>
	<div class="wrapper">

		<!-- Navigation -->
		<%-- <%@include file="./shared/navbar.jsp"%> --%>

		<!-- Page Content -->

		<div class="bodyContainer">
			
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks contact -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true }">
				<%@include file="listProducts.jsp"%>
			</c:if>	
			
			
			<!-- Load only when user clicks show product -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>								

			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickManageProduct == true}">
				<%@include file="manageProduct.jsp"%>
			</c:if>	

			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickShowCart == true}">
				<%@include file="cart.jsp"%>
			</c:if>	

		</div>


		<!-- Footer comes here -->
		<%-- <%@include file="./shared/footer.jsp"%> --%>

		<%-- <script src="${js}/jquery.js"></script>
		<script src="${js}/jquery.validate.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/jquery.dataTables.js"></script>
		<script src="${js}/dataTables.bootstrap.js"></script>
		<script src="${js}/bootbox.min.js"></script> --%>
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>