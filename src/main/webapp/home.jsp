<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사이트이름</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    
</head>

<body>

    <header class="header">

        <!-- 사이트 이름 -->
        <div class="logo">사이트이름</div>

        <!-- 메뉴 -->
        <nav class="nav">
            <a href="${pageContext.request.contextPath}/home.jsp">홈</a>
            <a href="#">프로젝트</a>
            <a href="#">팀원구하기</a>
            <c:choose>
    			<%-- 로그인 상태 --%>
    			<c:when test="${not empty sessionScope.userId}">
    				<a href="${pageContext.request.contextPath}/user/mypage">
        				마이페이지
    				</a>
				</c:when>

    			<%-- 로그아웃 상태 --%>
    			<c:otherwise>
        			<a href="#" onclick="openLoginModal(); return false;">
            			마이페이지
        			</a>
    			</c:otherwise>
			</c:choose>
        </nav>

       <div class="login-area">

    <c:choose>

        <%-- 로그인한 상태 --%>
        <c:when test="${not empty sessionScope.userId}">
            <a href="${pageContext.request.contextPath}/user/logout"
               class="login-button">
                로그아웃
            </a>
        </c:when>

        <%-- 로그인하지 않은 상태 --%>
        <c:otherwise>
            <a href="${pageContext.request.contextPath}/user/login/form"
               class="login-button">
                로그인
            </a>
        </c:otherwise>

    </c:choose>

</div>

    </header>
    
  <!-- =========================
     통합 검색
     ========================= -->

<section class="search-section">

    <div class="search-bar">


        <!-- =========================
             왼쪽 분류 선택
             ========================= -->

        <div class="search-category">

            <button type="button"
                    id="categoryToggle"
                    class="category-toggle"
                    onclick="toggleCategoryMenu()">

                <span id="selectedCategory">
                    분류
                </span>

                <span class="category-arrow">
                    ▼
                </span>

            </button>


            <!-- =========================
                 분류 드롭다운
                 ========================= -->

            <div id="categoryMenu"
                 class="category-menu">


                <!-- 팀프로젝트 -->

                <div class="category-main-title">
                    팀프로젝트
                </div>


                <!-- 스터디 -->

                <div class="category-group">

                    <div class="category-group-title">
                        스터디
                    </div>

                    <div class="category-options">

                        <button type="button"
                                onclick="selectCategory('알고리즘')">
                            알고리즘
                        </button>

                        <button type="button"
                                onclick="selectCategory('코딩테스트')">
                            코딩테스트
                        </button>

                        <button type="button"
                                onclick="selectCategory('어학자격증')">
                            어학자격증
                        </button>

                        <button type="button"
                                onclick="selectCategory('CS')">
                            CS
                        </button>

                        <button type="button"
                                onclick="selectCategory('자율/기타')">
                            자율/기타
                        </button>

                    </div>

                </div>


                <!-- 학교 팀플 -->

                <div class="category-group">

                    <div class="category-group-title">
                        학교 팀프로젝트
                    </div>

                    <div class="category-options">

                        <button type="button"
                                onclick="selectCategory('소시개')">
                            소시개
                        </button>

                        <button type="button"
                                onclick="selectCategory('데베개')">
                            데베개
                        </button>

                    </div>

                </div>


                <!-- 프로젝트 -->

                <div class="category-group">

                    <div class="category-group-title">
                        프로젝트
                    </div>

                    <div class="category-options">

                        <button type="button"
                                onclick="selectCategory('웹')">
                            웹
                        </button>

                        <button type="button"
                                onclick="selectCategory('앱')">
                            앱
                        </button>

                        <button type="button"
                                onclick="selectCategory('게임')">
                            게임
                        </button>

                    </div>

                </div>


                <!-- 구분선 -->

                <div class="category-divider"></div>


                <!-- 팀원 -->

                <div class="category-main-title">
                    팀원
                </div>

                <div class="category-group">

                    <div class="category-options">

                        <button type="button"
                                onclick="selectCategory('기획자')">
                            기획자
                        </button>

                        <button type="button"
                                onclick="selectCategory('디자이너')">
                            디자이너
                        </button>

                        <button type="button"
                                onclick="selectCategory('백엔드')">
                            백엔드
                        </button>

                        <button type="button"
                                onclick="selectCategory('프론트엔드')">
                            프론트엔드
                        </button>

                    </div>

                </div>

            </div>

        </div>


        <!-- =========================
             오른쪽 검색어
             ========================= -->

        <div class="search-input-area">

            <input type="text"
                   id="searchInput"
                   placeholder="제목, 키워드, 기술스택 검색">


            <button type="button"
                    class="search-button"
                    onclick="searchContent()"
                    aria-label="검색">

                <span class="search-icon"></span>

            </button>

        </div>

    </div>

</section>

<!-- 로그인 필요 팝업 -->
<div id="loginModal" class="modal">

    <div class="modal-content">

        <p>로그인이 필요한 서비스입니다.</p>

        <div class="modal-buttons">

            <button type="button" onclick="closeLoginModal()">
                확인
            </button>

            <a href="${pageContext.request.contextPath}/user/login/form"
               class="modal-login-button">
                로그인
            </a>

        </div>

    </div>

</div>

<script>
    function openLoginModal() {
        document.getElementById("loginModal").style.display = "flex";
    }

    function closeLoginModal() {
        document.getElementById("loginModal").style.display = "none";
    }
    
    

    /* =========================
       분류 메뉴 열기 / 닫기
       ========================= */

    function toggleCategoryMenu() {

        const menu =
            document.getElementById("categoryMenu");

        const toggle =
            document.getElementById("categoryToggle");

        menu.classList.toggle("show");

        toggle.classList.toggle("open");
    }


    /* =========================
       분류 선택
       ========================= */

    function selectCategory(category) {

        const selectedCategory =
            document.getElementById("selectedCategory");

        const menu =
            document.getElementById("categoryMenu");

        const toggle =
            document.getElementById("categoryToggle");


        selectedCategory.textContent = category;

        menu.classList.remove("show");

        toggle.classList.remove("open");
    }


    /* =========================
       검색
       ========================= */

    function searchContent() {

        const category =
            document.getElementById("selectedCategory")
                .textContent.trim();

        const keyword =
            document.getElementById("searchInput")
                .value.trim();


        if (keyword === "") {

            alert("검색어를 입력해주세요.");

            return;
        }


        /* 현재는 UI 확인용 */
        console.log("분류:", category);
        console.log("검색어:", keyword);
    }


    /* =========================
       Enter로 검색
       ========================= */

    document
        .getElementById("searchInput")
        .addEventListener("keydown", function(event) {

            if (event.key === "Enter") {

                event.preventDefault();

                searchContent();
            }
        });


    /* =========================
       바깥 클릭 시 메뉴 닫기
       ========================= */

    document.addEventListener("click", function(event) {

        const category =
            document.querySelector(".search-category");

        if (!category.contains(event.target)) {

            document
                .getElementById("categoryMenu")
                .classList.remove("show");

            document
                .getElementById("categoryToggle")
                .classList.remove("open");
        }
    });


</script>

</body>

</html>