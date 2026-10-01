<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 변경</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/mypage.css">
</head>

<body>

<header class="header">
    <div class="logo">사이트이름</div>

    <nav class="nav">
        <a href="${pageContext.request.contextPath}/home.jsp">홈</a>
        <a href="#">프로젝트</a>
        <a href="#">팀원구하기</a>
        <a href="${pageContext.request.contextPath}/user/mypage">
            마이페이지
        </a>
    </nav>

    <div class="login-area">
        <a href="${pageContext.request.contextPath}/user/logout"
           class="login-button">
            로그아웃
        </a>
    </div>
</header>

<main class="mypage-container">

    <h1 class="page-title">비밀번호 변경</h1>

	<c:if test="${not empty error}">
    	<p class="error-message">
       	 	${error}
    	</p>
	</c:if>

    <form action="${pageContext.request.contextPath}/user/password/update"
          method="post">

        <div class="profile-form-row">
            <label for="currentPassword">현재 비밀번호</label>
            <input type="password"
                   id="currentPassword"
                   name="currentPassword"
                   required>
        </div>

        <div class="profile-form-row">
            <label for="newPassword">새 비밀번호</label>
            <input type="password"
                   id="newPassword"
                   name="newPassword"
                   required>
        </div>

        <div class="profile-form-row">
            <label for="confirmPassword">새 비밀번호 확인</label>
            <input type="password"
                   id="confirmPassword"
                   name="confirmPassword"
                   required>
        </div>

        <div class="profile-form-buttons">
            <a href="${pageContext.request.contextPath}/user/mypage"
               class="account-button">
                취소
            </a>

            <button type="submit"
                    class="account-button">
                변경
            </button>
        </div>

    </form>

</main>

</body>
</html>