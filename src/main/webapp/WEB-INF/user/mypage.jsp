<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/mypage.css">
</head>

<body>

    <!-- =========================
         헤더
         ========================= -->
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


    <!-- =========================
         마이페이지 내용
         ========================= -->
    <main class="mypage-container">

        <h1 class="page-title">프로필</h1>


        <!-- 프로필 상단 -->
        <section class="profile-section">

            <!-- 프로필 이미지 -->
            <div class="profile-image">
                <span>프로필</span>
            </div>


            <!-- 기본 회원 정보 -->
            <div class="profile-info">

                <div class="info-row">
                    <span class="info-label">닉네임</span>
                    <span class="info-value">${user.nickname}</span>
                </div>

                <div class="info-row">
                    <span class="info-label">전공</span>
                    <span class="info-value">${user.major}</span>
                </div>

                <div class="info-row">
                    <span class="info-label">학년</span>
                    <span class="info-value">${user.grade}</span>
                </div>

            </div>


            <!-- 프로필 수정 버튼 -->
            <div class="profile-edit-area">
                <a href="${pageContext.request.contextPath}/user/profile/update/form" class="edit-button">
    				프로필 수정
				</a>
            </div>

        </section>


        <!-- =========================
     상세 프로필
     ========================= -->

<section class="detail-section">

    <!-- 희망파트 -->
    <div class="detail-row">

        <span class="detail-label">희망파트</span>

        <div class="profile-tags">

            <c:forTokens items="${user.desiredPart}"
                         delims=","
                         var="part">

                <span class="profile-tag">
                    ${part}
                </span>

            </c:forTokens>

        </div>

    </div>


    <!-- 희망 프로젝트 -->
    <div class="detail-row">

        <span class="detail-label">희망 프로젝트</span>

        <div class="profile-tags">

            <c:forTokens items="${user.desiredProject}"
                         delims=","
                         var="project">

                <span class="profile-tag">
                    ${project}
                </span>

            </c:forTokens>

        </div>

    </div>


    <!-- 보유기술 -->
    <div class="detail-row">

        <span class="detail-label">보유기술</span>

        <div class="profile-tags">

            <c:forTokens items="${user.skills}"
                         delims=","
                         var="skill">

                <span class="profile-tag">
                    ${skill}
                </span>

            </c:forTokens>

        </div>

    </div>

</section>


        <!-- 뱃지 -->
        <section class="badge-section">

            <div class="badge-item">
                <div class="badge-circle"></div>
                <span>뱃지</span>
            </div>

            <div class="badge-item">
                <div class="badge-circle"></div>
                <span>뱃지</span>
            </div>

            <div class="badge-item">
                <div class="badge-circle"></div>
                <span>뱃지</span>
            </div>

            <div class="badge-item">
                <div class="badge-circle"></div>
                <span>뱃지</span>
            </div>

        </section>


        <hr class="divider">


        <!-- 계정 관리 버튼 -->
        <section class="account-section">
        	<a href="${pageContext.request.contextPath}/portfolio.jsp" class="account-button">
    			포트폴리오 관리
			</a>

            <a href="${pageContext.request.contextPath}/user/account/update/form" class="account-button">
    			회원정보 수정
			</a>

            <a href="${pageContext.request.contextPath}/user/password/update/form" class="account-button">
    			비밀번호 변경
			</a>

            <a href="${pageContext.request.contextPath}/user/withdraw/form" class="account-button">
    			회원 탈퇴
			</a>

        </section>

    </main>

</body>
</html>