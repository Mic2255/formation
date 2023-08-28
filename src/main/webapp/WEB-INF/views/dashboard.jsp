
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@include file="template/header.jsp"%>
<body class="g-sidenav-show  bg-gray-100">
    <%@include file="template/sidebar.jsp"%>
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        <%@include file="template/navbar.jsp"%>

      <!-- Github buttons -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
      <script src="${contextPath}/resources/assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
</body>
