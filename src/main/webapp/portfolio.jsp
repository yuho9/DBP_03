<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>포트폴리오 관리</title>

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


<main class="portfolio-container">

    <!-- ==================== 제목 ==================== -->

    <h1 class="page-title">포트폴리오 관리</h1>


    <!-- ==================== 메인 포트폴리오 ==================== -->

    <section class="main-portfolio">

        <!-- 왼쪽 영역 -->
        <div class="portfolio-column">

            <div class="portfolio-section">
                <h2>학력</h2>

                <div class="history-item">
                    <span>2022.03 ~ 현재</span>
                    <strong>OO대학교</strong>
                </div>
            </div>


            <div class="portfolio-section">
                <h2>수상 이력</h2>

                <div class="history-item">
                    <span>2026.08</span>
                    <strong>OO 공모전</strong>
                </div>
            </div>

        </div>


        <!-- 가운데 영역 -->
        <div class="portfolio-column project-column">

            <div class="portfolio-section">

                <h2>프로젝트</h2>

                <h3>팀플용 프로젝트</h3>

                <p class="project-period">
                    2026.03 ~ 2026.06
                </p>

                <p class="project-description">
                    프로젝트 설명이 들어가는 영역입니다.
                </p>

                <a href="#" class="project-link">
                    프로젝트 링크
                </a>

                <span class="file-link">
                    PDF 파일
                </span>

            </div>

        </div>


        <!-- 오른쪽 영역 -->
        <div class="portfolio-column">

            <div class="portfolio-section">

                <h2>활동</h2>

                <div class="history-item">
                    <span>2026.03 ~ 현재</span>
                    <strong>동아리 활동</strong>
                </div>

            </div>


            <div class="portfolio-section">

                <h2>GitHub & 블로그</h2>

                <a href="#" class="external-link">
                    GitHub
                </a>

                <a href="#" class="external-link">
                    Blog
                </a>

            </div>

        </div>

    </section>


    <!-- ==================== 포트폴리오 목록 ==================== -->

    <section class="portfolio-list-section">

    <div class="list-header">

        <div class="list-title-area">

            <h2>포트폴리오 목록</h2>

            <label class="order-change-label">
                <input type="checkbox"
                       id="orderChangeCheck"
                       onchange="toggleOrderChange()">

                순서 변경
            </label>

        </div>

        <div class="list-buttons">

    <button type="button"
            class="bulk-delete-button"
            onclick="deleteSelectedPortfolios()">
        삭제하기
    </button>

    <a href="${pageContext.request.contextPath}/portfolioForm.jsp"
       class="create-button">
        생성하기
    </a>

</div>

    </div>


    <table class="portfolio-table">

        <thead>
            <tr>

                <!-- 순서 변경용 -->
                <th class="drag-column"></th>

                <th>선택</th>
                <th>제목</th>
                <th>Main</th>
                <th>관리</th>

            </tr>
        </thead>


        <tbody id="portfolioTableBody">

            <!-- 첫 번째 포트폴리오 -->

            <tr class="portfolio-row">

                <td class="drag-cell">

                    <span class="drag-handle">
                        ☰
                    </span>

                </td>

                <td>
                    <input type="checkbox" class="portfolio-select">
                </td>

                <td class="portfolio-name">
                    팀플용 포트폴리오
                </td>

                
                    <td>
    <button type="button"
            class="main-star active"
            onclick="setMainPortfolio(this)">
        ★
    </button>
</td>
                

                <td class="manage-buttons">

                    <button type="button">
                        수정하기
                    </button>

                    <button type="button"
        onclick="deletePortfolio(this)">
    삭제하기
</button>

                </td>

            </tr>


            <!-- 두 번째 포트폴리오 -->

            <tr class="portfolio-row">

                <td class="drag-cell">

                    <span class="drag-handle">
                        ☰
                    </span>

                </td>

                <td>
                    <input type="checkbox" class="portfolio-select">
                </td>

                <td class="portfolio-name">
                    백엔드 포트폴리오
                </td>

                
                   <td>
    <button type="button"
            class="main-star"
            onclick="setMainPortfolio(this)">
        ☆
    </button>
</td>
               

                <td class="manage-buttons">

                    <button type="button">
                        수정하기
                    </button>

                    <button type="button"
        onclick="deletePortfolio(this)">
    삭제하기
</button>

                </td>

            </tr>


            <!-- 세 번째 포트폴리오 -->

            <tr class="portfolio-row">

                <td class="drag-cell">

                    <span class="drag-handle">
                        ☰
                    </span>

                </td>

                <td>
                    <input type="checkbox" class="portfolio-select">
                </td>

                <td class="portfolio-name">
                    데이터 프로젝트 포트폴리오
                </td>

                <td>
    <button type="button"
            class="main-star"
            onclick="setMainPortfolio(this)">
        ☆
    </button>
</td>

                <td class="manage-buttons">

                    <button type="button">
                        수정하기
                    </button>

                   <button type="button"
        onclick="deletePortfolio(this)">
    삭제하기
</button>

                </td>

            </tr>

        </tbody>

    </table>

</section>

</main>
<script>

    let draggedRow = null;


    /* ========================================
       순서 변경 ON / OFF
       ======================================== */

    function toggleOrderChange() {

        const checkbox =
            document.getElementById("orderChangeCheck");

        const rows =
            document.querySelectorAll(".portfolio-row");

        const table =
            document.querySelector(".portfolio-table");


        if (checkbox.checked) {

            /* 순서 변경 모드 ON */

            table.classList.add("order-mode");


            rows.forEach(function(row) {

                row.setAttribute("draggable", "true");

            });

        } else {

            /* 순서 변경 모드 OFF */

            table.classList.remove("order-mode");


            rows.forEach(function(row) {

                row.setAttribute("draggable", "false");

                row.classList.remove("dragging");

            });

        }
    }


    /* ========================================
       드래그 시작
       ======================================== */

    document.addEventListener("dragstart", function(event) {

        const row =
            event.target.closest(".portfolio-row");

        if (!row) {
            return;
        }


        const checkbox =
            document.getElementById("orderChangeCheck");


        if (!checkbox.checked) {

            event.preventDefault();

            return;
        }


        draggedRow = row;

        row.classList.add("dragging");

    });


    /* ========================================
       드래그 종료
       ======================================== */

    document.addEventListener("dragend", function(event) {

        const row =
            event.target.closest(".portfolio-row");

        if (row) {

            row.classList.remove("dragging");

        }


        draggedRow = null;

    });


    /* ========================================
       위 / 아래 이동
       ======================================== */

    const tableBody =
        document.getElementById("portfolioTableBody");


    tableBody.addEventListener("dragover", function(event) {

        event.preventDefault();


        if (!draggedRow) {
            return;
        }


        const targetRow =
            event.target.closest(".portfolio-row");


        if (!targetRow) {
            return;
        }


        if (targetRow === draggedRow) {
            return;
        }


        const rectangle =
            targetRow.getBoundingClientRect();


        const middle =
            rectangle.top + rectangle.height / 2;


        /*
         * 마우스가 대상 행의 위쪽에 있으면
         * 해당 행 위로 이동
         */

        if (event.clientY < middle) {

            tableBody.insertBefore(
                draggedRow,
                targetRow
            );

        }

        /*
         * 마우스가 대상 행의 아래쪽에 있으면
         * 해당 행 아래로 이동
         */

        else {

            tableBody.insertBefore(
                draggedRow,
                targetRow.nextSibling
            );

        }

    });
    function deleteSelectedPortfolios() {

        const checkedBoxes =
            document.querySelectorAll(
                ".portfolio-select:checked"
            );


        /* 아무것도 선택하지 않은 경우 */

        if (checkedBoxes.length === 0) {

            alert("삭제할 포트폴리오를 선택해주세요.");

            return;
        }


        /* 삭제 확인 */

        const result = confirm(
            "선택한 포트폴리오를 삭제하시겠습니까?"
        );


        if (!result) {
            return;
        }


        /* 선택된 포트폴리오 삭제 */

        checkedBoxes.forEach(function(checkbox) {

            const row =
                checkbox.closest(".portfolio-row");


            if (row) {
                row.remove();
            }

        });


        alert("선택한 포트폴리오가 삭제되었습니다.");
    }
    /* =========================
    포트폴리오 개별 삭제
    ========================= */

 function deletePortfolio(button) {

     const result = confirm(
         "이 포트폴리오를 삭제하시겠습니까?"
     );

     if (!result) {
         return;
     }

     const row = button.closest(".portfolio-row");

     if (row) {
         row.remove();
     }

     alert("포트폴리오가 삭제되었습니다.");
 }
 /* =========================
 Main 포트폴리오 선택
 ========================= */

function setMainPortfolio(selectedButton) {

  const stars =
      document.querySelectorAll(".main-star");


  /* 모든 별을 빈 별로 변경 */
  stars.forEach(function(star) {

      star.textContent = "☆";

      star.classList.remove("active");

  });


  /* 선택한 포트폴리오만 Main으로 변경 */
  selectedButton.textContent = "★";

  selectedButton.classList.add("active");
}

</script>
</body>
</html>