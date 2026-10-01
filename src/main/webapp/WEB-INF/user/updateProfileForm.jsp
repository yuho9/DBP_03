<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>프로필 수정</title>

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

        <h1 class="page-title">프로필 수정</h1>
		<!-- =========================
     프로필 이미지
     ========================= -->

<div class="profile-image-edit">

    <div class="profile-image-preview"
         id="profileImagePreview">

        <span id="profileImageText">
            프로필
        </span>

        <img id="profileImage"
             alt="프로필 이미지">

    </div>


    <div class="profile-image-buttons">

        <label for="profileImageInput"
               class="image-select-button">
            이미지 선택
        </label>

        <button type="button"
                class="image-delete-button"
                onclick="removeProfileImage()">
            이미지 삭제
        </button>

    </div>


    <input type="file"
           id="profileImageInput"
           accept="image/*"
           hidden>

</div>
        <form action="${pageContext.request.contextPath}/user/profile/update"
              method="post">

            <div class="profile-form-row">
                <label for="nickname">닉네임</label>

                <input type="text"
                       id="nickname"
                       name="nickname"
                       value="${user.nickname}">
            </div>


            <div class="profile-form-row">
                <label for="major">전공</label>

                <input type="text"
                       id="major"
                       name="major"
                       value="${user.major}">
            </div>


            <div class="profile-form-row">
                <label for="grade">학년</label>

                <input type="text"
                       id="grade"
                       name="grade"
                       value="${user.grade}">
            </div>


            <div class="profile-form-row option-form-row">

    <label>희망파트</label>

    <div class="option-area">

        <label class="check-option">
            <input type="checkbox"
                   class="part-checkbox"
                   value="기획자">
            기획자
        </label>

        <label class="check-option">
            <input type="checkbox"
                   class="part-checkbox"
                   value="디자이너">
            디자이너
        </label>

        <label class="check-option">
            <input type="checkbox"
                   class="part-checkbox"
                   value="백엔드">
            백엔드
        </label>

        <label class="check-option">
            <input type="checkbox"
                   class="part-checkbox"
                   value="프론트엔드">
            프론트엔드
        </label>

    </div>

    <!-- 실제 서버로 전송 -->
    <input type="hidden"
           id="desiredPart"
           name="desiredPart"
           value="${user.desiredPart}">

</div>


            <div class="profile-form-row option-form-row">

    <label>희망 프로젝트</label>

    <div class="project-option-area">

        <!-- 스터디 -->
        <div class="option-group">

            <strong>스터디</strong>

            <div class="option-list">

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="알고리즘">
                    알고리즘
                </label>

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="코딩테스트">
                    코딩테스트
                </label>

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="어학자격증">
                    어학자격증
                </label>

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="CS">
                    CS
                </label>

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="자율/기타">
                    자율/기타
                </label>

            </div>

        </div>


        <!-- 학교 팀플 -->
        <div class="option-group">

            <strong>학교 팀플</strong>

            <div class="option-list">

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="소시개">
                    소시개
                </label>

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="데베개">
                    데베개
                </label>

            </div>

        </div>


        <!-- 프로젝트 -->
        <div class="option-group">

            <strong>프로젝트</strong>

            <div class="option-list">

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="웹">
                    WEB
                </label>

                <label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="앱">
                    MOBILE
                </label>

               	<label class="check-option">
                    <input type="checkbox"
                           class="project-checkbox"
                           value="게임">
                    GAME
                </label>

            </div>

        </div>

    </div>


    <!-- 실제 서버로 전송 -->
    <input type="hidden"
           id="desiredProject"
           name="desiredProject"
           value="${user.desiredProject}">

</div>


            <div class="profile-form-row skill-profile-row">

    <label for="skillInput">보유기술</label>

    <div class="skill-edit-area">

        <div class="skill-input-area">

            <input type="text"
                   id="skillInput"
                   placeholder="예: Java, Spring Boot, MySQL">

            <button type="button"
                    class="skill-add-button"
                    onclick="addSkill()">
                추가
            </button>

        </div>


        <!-- 추가한 기술이 표시되는 곳 -->
        <div id="skillList"
             class="skill-list">
        </div>


        <!-- 실제 서버로 전송되는 값 -->
        <input type="hidden"
               id="skills"
               name="skills"
               value="${user.skills}">

    </div>

</div>


            <div class="profile-form-buttons">

                <a href="${pageContext.request.contextPath}/user/mypage"
                   class="account-button">
                    취소
                </a>

                <button type="submit"
                        class="account-button">
                    저장
                </button>

            </div>

        </form>

        </main>


<script>

    /* =========================
       보유기술 추가
       ========================= */

    function addSkill() {

        const input =
            document.getElementById("skillInput");

        const skillName =
            input.value.trim();

        if (skillName === "") {

            alert("기술을 입력해주세요.");

            return;
        }


        /* 중복 확인 */

        const existingSkills =
            document.querySelectorAll(".skill-tag");

        for (const skill of existingSkills) {

            if (skill.dataset.skill.toLowerCase()
                    === skillName.toLowerCase()) {

                alert("이미 추가된 기술입니다.");

                return;
            }
        }


        createSkillTag(skillName);

        updateSkillsValue();

        input.value = "";

        input.focus();
    }


    /* =========================
       기술 태그 생성
       ========================= */

    function createSkillTag(skillName) {

        const skillList =
            document.getElementById("skillList");

        const tag =
            document.createElement("div");

        tag.className = "skill-tag";

        tag.dataset.skill = skillName;


        

        tag.innerHTML =
            '<span>' + skillName + '</span>' +
            '<button type="button" ' +
            'onclick="removeSkill(this)">×</button>';


        skillList.appendChild(tag);
    }


    /* =========================
       기술 삭제
       ========================= */

    function removeSkill(button) {

        const tag =
            button.closest(".skill-tag");

        if (tag) {

            tag.remove();

            updateSkillsValue();
        }
    }


    /* =========================
       hidden input 값 갱신
       ========================= */

    function updateSkillsValue() {

        const tags =
            document.querySelectorAll(".skill-tag");

        const skills = [];


        tags.forEach(function(tag) {

            skills.push(tag.dataset.skill);

        });


        document.getElementById("skills").value =
            skills.join(", ");
    }


    /* =========================
       Enter로 기술 추가
       ========================= */

    document
        .getElementById("skillInput")
        .addEventListener("keydown", function(event) {

            if (event.key === "Enter") {

                event.preventDefault();

                addSkill();
            }
        });


    /* =========================
       기존 DB의 보유기술 표시
       ========================= */

    const savedSkills =
        document.getElementById("skills").value;


    if (savedSkills.trim() !== "") {

        savedSkills
            .split(",")
            .forEach(function(skill) {

                const skillName = skill.trim();

                if (skillName !== "") {

                    createSkillTag(skillName);
                }
            });
    }
    
    /* =========================
    희망파트
    ========================= */

 const partCheckboxes =
     document.querySelectorAll(".part-checkbox");

 const desiredPartInput =
     document.getElementById("desiredPart");


 /* 기존 DB 값 체크 */

 const savedParts =
     desiredPartInput.value
         .split(",")
         .map(function(value) {
             return value.trim();
         });


 partCheckboxes.forEach(function(checkbox) {

     if (savedParts.includes(checkbox.value)) {
         checkbox.checked = true;
     }


     checkbox.addEventListener("change", function() {

         const selectedParts = [];

         partCheckboxes.forEach(function(item) {

             if (item.checked) {
                 selectedParts.push(item.value);
             }

         });

         desiredPartInput.value =
             selectedParts.join(",");
     });

 });


 /* =========================
    희망 프로젝트
    ========================= */

 const projectCheckboxes =
     document.querySelectorAll(".project-checkbox");

 const desiredProjectInput =
     document.getElementById("desiredProject");


 /* 기존 DB 값 체크 */

 const savedProjects =
     desiredProjectInput.value
         .split(",")
         .map(function(value) {
             return value.trim();
         });


 projectCheckboxes.forEach(function(checkbox) {

     if (savedProjects.includes(checkbox.value)) {
         checkbox.checked = true;
     }


     checkbox.addEventListener("change", function() {

         const selectedProjects = [];

         projectCheckboxes.forEach(function(item) {

             if (item.checked) {
                 selectedProjects.push(item.value);
             }

         });

         desiredProjectInput.value =
             selectedProjects.join(",");
     });

 });
 /* =========================
 프로필 이미지 미리보기
 ========================= */

const profileImageInput =
  document.getElementById("profileImageInput");

const profileImage =
  document.getElementById("profileImage");

const profileImageText =
  document.getElementById("profileImageText");


profileImageInput.addEventListener(
  "change",
  function(event) {

      const file = event.target.files[0];

      if (!file) {
          return;
      }


      /* 이미지 파일인지 확인 */

      if (!file.type.startsWith("image/")) {

          alert("이미지 파일만 선택할 수 있습니다.");

          profileImageInput.value = "";

          return;
      }


      /* 이미지 미리보기 */

      const reader = new FileReader();

      reader.onload = function(e) {

          profileImage.src = e.target.result;

          profileImage.style.display = "block";

          profileImageText.style.display = "none";
      };

      reader.readAsDataURL(file);
  }
);


/* =========================
 프로필 이미지 삭제
 ========================= */

function removeProfileImage() {

  profileImageInput.value = "";

  profileImage.src = "";

  profileImage.style.display = "none";

  profileImageText.style.display = "block";
}
</script>

</body>
</html>