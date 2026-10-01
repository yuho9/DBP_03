<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>포트폴리오 생성</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/portfolio.css">
</head>

<body>

<!-- ==================== 헤더 ==================== -->

<header class="header">

    <div class="logo">
        <a href="${pageContext.request.contextPath}/home.jsp">
            사이트이름
        </a>
    </div>

    <nav class="nav">
        <a href="${pageContext.request.contextPath}/home.jsp">
            홈
        </a>

        <a href="#">
            프로젝트
        </a>

        <a href="#">
            팀원구하기
        </a>

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


<!-- ==================== 본문 ==================== -->

<main class="portfolio-container">

    <div class="form-title-area">

        <h1 class="page-title">
            포트폴리오 생성
        </h1>

        <p>
            프로젝트와 활동 경험을 입력해주세요.
        </p>

    </div>


    <!--
        현재는 화면 구현 단계이므로
        서버로 전송하지 않음
    -->

    <form class="portfolio-form">


        <!-- ====================
             포트폴리오 제목
             ==================== -->

        <section class="form-section">

            <h2>포트폴리오 제목</h2>

            <input type="text"
                   class="full-input"
                   name="portfolioTitle"
                   placeholder="포트폴리오 제목을 입력해주세요.">

        </section>


        <!-- ====================
             학력
             ==================== -->

        <section class="form-section">

            <div class="section-title">

                <h2>학력</h2>

                <button type="button"
                        class="small-button"
                        onclick="addEducation()">
                    + 추가
                </button>

            </div>


            <div id="educationList">

                <!-- 첫 번째 학력 -->

                <div class="education-item">

                    <div class="education-form-row">

                        <!-- 기간 -->

                        <div class="date-range">

                            <div class="date-field">

                                <label>
                                    시작일자
                                </label>

                                <input type="date"
                                       name="educationStartDate">

                            </div>


                            <span class="date-separator">
                                ~
                            </span>


                            <div class="date-field">

                                <label>
                                    종료일자
                                </label>

                                <input type="date"
                                       name="educationEndDate">

                            </div>

                        </div>


                        <!-- 학교명 -->

                        <div class="text-field">

                            <label>
                                학교명
                            </label>

                            <input type="text"
                                   name="schoolName"
                                   placeholder="학교명을 입력해주세요.">

                        </div>


                        <!-- 전공 -->

                        <div class="text-field">

                            <label>
                                전공
                            </label>

                            <input type="text"
                                   name="educationMajor"
                                   placeholder="전공을 입력해주세요.">

                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- ====================
             수상 이력
             ==================== -->

        <section class="form-section">

            <div class="section-title">

                <h2>수상 이력</h2>

                <button type="button"
                        class="small-button"
                        onclick="addAward()">
                    + 추가
                </button>

            </div>


            <div id="awardList">

                <!-- 첫 번째 수상 이력 -->

                <div class="award-item">

                    <div class="award-form-row">

                        <!-- 수상일자 -->

                        <div class="date-field">

                            <label>
                                수상일자
                            </label>

                            <input type="date"
                                   name="awardDate">

                        </div>


                        <!-- 수상명 -->

                        <div class="text-field">

                            <label>
                                수상명
                            </label>

                            <input type="text"
                                   name="awardName"
                                   placeholder="수상명을 입력해주세요.">

                        </div>


                        <!-- 설명 -->

                        <div class="text-field">

                            <label>
                                설명
                            </label>

                            <input type="text"
                                   name="awardDescription"
                                   placeholder="간단한 설명을 입력해주세요.">

                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- ====================
             프로젝트
             ==================== -->

        <section class="form-section">

            <div class="section-title">

                <h2>프로젝트</h2>

                <button type="button"
                        class="small-button"
                        onclick="addProject()">
                    + 추가
                </button>

            </div>


            <div id="projectList">

                <!-- 첫 번째 프로젝트 -->

                <div class="project-item">

                    <div class="project-form-box">

                        <!-- 프로젝트명 -->

                        <div class="project-name-field">

                            <label>
                                프로젝트명
                            </label>

                            <input type="text"
                                   name="projectName"
                                   placeholder="프로젝트명을 입력해주세요.">

                        </div>


                        <!-- 프로젝트 기간 -->

                        <div class="project-date-area">

                            <div class="date-field">

                                <label>
                                    시작일자
                                </label>

                                <input type="date"
                                       name="projectStartDate">

                            </div>


                            <span class="date-separator">
                                ~
                            </span>


                            <div class="date-field">

                                <label>
                                    종료일자
                                </label>

                                <input type="date"
                                       name="projectEndDate">

                            </div>

                        </div>


                        <!-- 프로젝트 설명 -->

                        <div class="textarea-field">

                            <label>
                                프로젝트 설명
                            </label>

                            <textarea name="projectDescription"
                                      placeholder="프로젝트에서 맡은 역할, 사용 기술, 주요 기능 등을 입력해주세요."></textarea>

                        </div>


                        <!-- 링크 / PDF -->

                        <div class="project-bottom-row">

                            <div class="text-field">

                                <label>
                                    프로젝트 링크
                                </label>

                                <input type="url"
                                       name="projectUrl"
                                       placeholder="프로젝트 링크를 입력해주세요.">

                            </div>


                            <div class="file-field">

                                <label>
                                    PDF 파일
                                </label>

                                <input type="file"
                                       name="projectFile"
                                       accept=".pdf">

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- ====================
             활동
             ==================== -->

        <section class="form-section">

            <div class="section-title">

                <h2>활동</h2>

                <button type="button"
                        class="small-button"
                        onclick="addActivity()">
                    + 추가
                </button>

            </div>


            <div id="activityList">

                <!-- 첫 번째 활동 -->

                <div class="activity-item">

                    <div class="activity-form-row">

                        <!-- 활동 기간 -->

                        <div class="date-range">

                            <div class="date-field">

                                <label>
                                    시작일자
                                </label>

                                <input type="date"
                                       name="activityStartDate">

                            </div>


                            <span class="date-separator">
                                ~
                            </span>


                            <div class="date-field">

                                <label>
                                    종료일자
                                </label>

                                <input type="date"
                                       name="activityEndDate">

                            </div>

                        </div>


                        <!-- 활동명 -->

                        <div class="text-field">

                            <label>
                                활동명
                            </label>

                            <input type="text"
                                   name="activityName"
                                   placeholder="동아리, 대외활동 등을 입력해주세요.">

                        </div>


                        <!-- 활동 설명 -->

                        <div class="text-field">

                            <label>
                                설명
                            </label>

                            <input type="text"
                                   name="activityDescription"
                                   placeholder="활동 내용을 입력해주세요.">

                        </div>

                    </div>

                </div>

            </div>

        </section>

		<!-- ====================
     보유기술
     ==================== -->

<section class="form-section">

    <h2>보유기술</h2>

    <div class="skill-input-area">

        <input type="text"
               id="skillInput"
               class="skill-input"
               placeholder="예: Java, Spring Boot, MySQL">

        <button type="button"
                class="small-button"
                onclick="addSkill()">
            추가
        </button>

    </div>


    <!-- 추가된 기술들이 표시되는 영역 -->

    <div id="skillList"
         class="skill-list">
    </div>

</section>
        
        <!-- ====================
             GitHub & 블로그
             ==================== -->

        <section class="form-section">

            <h2>GitHub & 블로그</h2>


            <div class="link-form-row">

                <div class="text-field">

                    <label>
                        GitHub
                    </label>

                    <input type="url"
                           name="githubUrl"
                           placeholder="GitHub 주소를 입력해주세요.">

                </div>


                <div class="text-field">

                    <label>
                        블로그
                    </label>

                    <input type="url"
                           name="blogUrl"
                           placeholder="블로그 주소를 입력해주세요.">

                </div>

            </div>

        </section>


        <!-- ====================
             하단 버튼
             ==================== -->

        <div class="form-buttons">

            <a href="${pageContext.request.contextPath}/portfolio.jsp"
               class="cancel-button">
                취소
            </a>

            <!--
                아직 DB 저장 기능을 만들지 않았으므로
                type="button"
            -->

            <button type="button"
                    class="save-button">
                생성하기
            </button>

        </div>

    </form>

</main>


<!-- ========================================
     JavaScript
     ======================================== -->

<script>

    /* =========================
       항목 삭제
       ========================= */

    function removeItem(button) {

        const item = button.closest(
            ".education-item, .award-item, .project-item, .activity-item"
        );

        if (item) {
            item.remove();
        }
    }


    /* =========================
       학력 추가
       ========================= */

    function addEducation() {

        const list =
            document.getElementById("educationList");

        const item =
            document.createElement("div");

        item.className = "education-item";

        item.innerHTML = `

            <div class="item-delete-area">

                <button type="button"
                        class="delete-item-button"
                        onclick="removeItem(this)">
                    삭제
                </button>

            </div>


            <div class="education-form-row">

                <div class="date-range">

                    <div class="date-field">

                        <label>
                            시작일자
                        </label>

                        <input type="date"
                               name="educationStartDate">

                    </div>


                    <span class="date-separator">
                        ~
                    </span>


                    <div class="date-field">

                        <label>
                            종료일자
                        </label>

                        <input type="date"
                               name="educationEndDate">

                    </div>

                </div>


                <div class="text-field">

                    <label>
                        학교명
                    </label>

                    <input type="text"
                           name="schoolName"
                           placeholder="학교명을 입력해주세요.">

                </div>


                <div class="text-field">

                    <label>
                        전공
                    </label>

                    <input type="text"
                           name="educationMajor"
                           placeholder="전공을 입력해주세요.">

                </div>

            </div>
        `;

        list.appendChild(item);
    }


    /* =========================
       수상 이력 추가
       ========================= */

    function addAward() {

        const list =
            document.getElementById("awardList");

        const item =
            document.createElement("div");

        item.className = "award-item";

        item.innerHTML = `

            <div class="item-delete-area">

                <button type="button"
                        class="delete-item-button"
                        onclick="removeItem(this)">
                    삭제
                </button>

            </div>


            <div class="award-form-row">

                <div class="date-field">

                    <label>
                        수상일자
                    </label>

                    <input type="date"
                           name="awardDate">

                </div>


                <div class="text-field">

                    <label>
                        수상명
                    </label>

                    <input type="text"
                           name="awardName"
                           placeholder="수상명을 입력해주세요.">

                </div>


                <div class="text-field">

                    <label>
                        설명
                    </label>

                    <input type="text"
                           name="awardDescription"
                           placeholder="간단한 설명을 입력해주세요.">

                </div>

            </div>
        `;

        list.appendChild(item);
    }


    /* =========================
       프로젝트 추가
       ========================= */

    function addProject() {

        const list =
            document.getElementById("projectList");

        const item =
            document.createElement("div");

        item.className = "project-item";

        item.innerHTML = `

            <div class="item-delete-area">

                <button type="button"
                        class="delete-item-button"
                        onclick="removeItem(this)">
                    삭제
                </button>

            </div>


            <div class="project-form-box">

                <div class="project-name-field">

                    <label>
                        프로젝트명
                    </label>

                    <input type="text"
                           name="projectName"
                           placeholder="프로젝트명을 입력해주세요.">

                </div>


                <div class="project-date-area">

                    <div class="date-field">

                        <label>
                            시작일자
                        </label>

                        <input type="date"
                               name="projectStartDate">

                    </div>


                    <span class="date-separator">
                        ~
                    </span>


                    <div class="date-field">

                        <label>
                            종료일자
                        </label>

                        <input type="date"
                               name="projectEndDate">

                    </div>

                </div>


                <div class="textarea-field">

                    <label>
                        프로젝트 설명
                    </label>

                    <textarea name="projectDescription"
                              placeholder="프로젝트에서 맡은 역할, 사용 기술, 주요 기능 등을 입력해주세요."></textarea>

                </div>


                <div class="project-bottom-row">

                    <div class="text-field">

                        <label>
                            프로젝트 링크
                        </label>

                        <input type="url"
                               name="projectUrl"
                               placeholder="프로젝트 링크를 입력해주세요.">

                    </div>


                    <div class="file-field">

                        <label>
                            PDF 파일
                        </label>

                        <input type="file"
                               name="projectFile"
                               accept=".pdf">

                    </div>

                </div>

            </div>
        `;

        list.appendChild(item);
    }


    /* =========================
       활동 추가
       ========================= */

    function addActivity() {

        const list =
            document.getElementById("activityList");

        const item =
            document.createElement("div");

        item.className = "activity-item";

        item.innerHTML = `

            <div class="item-delete-area">

                <button type="button"
                        class="delete-item-button"
                        onclick="removeItem(this)">
                    삭제
                </button>

            </div>


            <div class="activity-form-row">

                <div class="date-range">

                    <div class="date-field">

                        <label>
                            시작일자
                        </label>

                        <input type="date"
                               name="activityStartDate">

                    </div>


                    <span class="date-separator">
                        ~
                    </span>


                    <div class="date-field">

                        <label>
                            종료일자
                        </label>

                        <input type="date"
                               name="activityEndDate">

                    </div>

                </div>


                <div class="text-field">

                    <label>
                        활동명
                    </label>

                    <input type="text"
                           name="activityName"
                           placeholder="동아리, 대외활동 등을 입력해주세요.">

                </div>


                <div class="text-field">

                    <label>
                        설명
                    </label>

                    <input type="text"
                           name="activityDescription"
                           placeholder="활동 내용을 입력해주세요.">

                </div>

            </div>
        `;

        list.appendChild(item);
    }
    /* =========================
    보유기술 추가
    ========================= */

 function addSkill() {

     const input =
         document.getElementById("skillInput");

     const skillList =
         document.getElementById("skillList");

     const skillName =
         input.value.trim();


     /* 아무것도 입력하지 않은 경우 */

     if (skillName === "") {

         alert("기술을 입력해주세요.");

         return;
     }


     /* 중복 기술 확인 */

     const existingSkills =
         skillList.querySelectorAll(".skill-tag");


     for (const skill of existingSkills) {

         if (skill.dataset.skill === skillName) {

             alert("이미 추가된 기술입니다.");

             return;
         }
     }


     /* 기술 태그 생성 */

     const tag =
         document.createElement("div");

     tag.className = "skill-tag";

     tag.dataset.skill = skillName;


     tag.innerHTML =
    	    '<span>' + skillName + '</span>' +
    	    '<button type="button" onclick="removeSkill(this)">×</button>' +
    	    '<input type="hidden" name="skills" value="' + skillName + '">';


     skillList.appendChild(tag);


     /* 입력창 비우기 */

     input.value = "";

     input.focus();
 }


 /* =========================
    보유기술 삭제
    ========================= */

 function removeSkill(button) {

     const tag =
         button.closest(".skill-tag");

     if (tag) {
         tag.remove();
     }
 }


 /* =========================
    Enter 키로 기술 추가
    ========================= */

 document
     .getElementById("skillInput")
     .addEventListener("keydown", function(event) {

         if (event.key === "Enter") {

             event.preventDefault();

             addSkill();
         }
     });

 </script>

 </body>
 </html>