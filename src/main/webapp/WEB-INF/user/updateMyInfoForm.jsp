<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/mypage.css">
</head>

<body>

<header class="header">

    <div class="logo">
        <a href="${pageContext.request.contextPath}/home.jsp">
            사이트이름
        </a>
    </div>

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

    <h1 class="page-title">회원정보 수정</h1>

    <form action="${pageContext.request.contextPath}/user/account/update"
          method="post">

        <div class="profile-form-row">
            <label>아이디</label>

            <input type="text"
                   value="${user.userId}"
                   readonly>
        </div>

        <div class="profile-form-row">
            <label for="name">이름</label>

            <input type="text"
                   id="name"
                   name="name"
                   value="${user.name}"
                   required>
        </div>

        <div class="profile-form-row">
            <label for="email">이메일</label>

            <input type="email"
                   id="email"
                   name="email"
                   value="${user.email}">
        </div>

        <div class="profile-form-row">
            <label for="phone">전화번호</label>

            <input type="text"
                   id="phone"
                   name="phone"
                   value="${user.phone}">
        </div>

        <div class="profile-form-buttons">

            <a href="${pageContext.request.contextPath}/user/mypage"
               class="account-button">
                취소
            </a>

            <button type="submit"
                    class="account-button">
                수정
            </button>

        </div>

    </form>

</main>

</body>
</html>