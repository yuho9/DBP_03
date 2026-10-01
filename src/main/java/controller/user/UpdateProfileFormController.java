package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.User;
import model.service.UserManager;

public class UpdateProfileFormController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();

        // 로그인하지 않은 경우
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        // 로그인한 사용자 ID
        String userId = UserSessionUtils.getLoginUserId(session);

        // 사용자 정보 조회
        UserManager manager = UserManager.getInstance();
        User user = manager.findUser(userId);

        // JSP에 사용자 정보 전달
        request.setAttribute("user", user);

        // 프로필 수정 화면으로 이동
        return "/user/updateProfileForm.jsp";
    }
}