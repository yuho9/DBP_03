package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.User;
import model.service.UserManager;

public class UpdateMyInfoController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();

        // 로그인 확인
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        // 수정 대상은 무조건 현재 로그인한 사용자
        String userId = UserSessionUtils.getLoginUserId(session);

        UserManager manager = UserManager.getInstance();

        // 기존 사용자 정보 조회
        User currentUser = manager.findUser(userId);

        // 비밀번호는 기존 값 그대로 유지
        User updateUser = new User(
            userId,
            currentUser.getPassword(),
            request.getParameter("name"),
            request.getParameter("email"),
            request.getParameter("phone")
        );

        manager.update(updateUser);

        return "redirect:/user/mypage";
    }
}