package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.User;
import model.service.UserManager;

public class UpdateProfileController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        // 1. 현재 세션 가져오기
        HttpSession session = request.getSession();

        // 2. 로그인 여부 확인
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        // 3. 현재 로그인한 사용자 ID 가져오기
        String userId = UserSessionUtils.getLoginUserId(session);

        // 4. DB에서 현재 사용자 정보 가져오기
        UserManager manager = UserManager.getInstance();
        User user = manager.findUser(userId);

        // 5. 사용자가 Form에 입력한 값 가져오기
        String nickname = request.getParameter("nickname");
        String major = request.getParameter("major");
        String grade = request.getParameter("grade");
        String desiredPart = request.getParameter("desiredPart");
        String desiredProject = request.getParameter("desiredProject");
        String skills = request.getParameter("skills");

        // 6. User 객체의 프로필 정보 변경
        user.setNickname(nickname);
        user.setMajor(major);
        user.setGrade(grade);
        user.setDesiredPart(desiredPart);
        user.setDesiredProject(desiredProject);
        user.setSkills(skills);

        // 7. DB에 프로필 정보 저장
        manager.updateProfile(user);

        // 8. 저장 완료 후 마이페이지로 이동
        return "redirect:/user/mypage";
    }
}