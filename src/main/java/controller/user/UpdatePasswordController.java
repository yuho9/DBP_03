package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.User;
import model.service.UserManager;

public class UpdatePasswordController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();

        // 1. 로그인 확인
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        // 2. 현재 로그인한 사용자 ID
        String userId =
            UserSessionUtils.getLoginUserId(session);

        // 3. 입력한 비밀번호 가져오기
        String currentPassword =
            request.getParameter("currentPassword");

        String newPassword =
            request.getParameter("newPassword");

        String confirmPassword =
            request.getParameter("confirmPassword");

        UserManager manager =
            UserManager.getInstance();

        // 4. 현재 사용자 정보 조회
        User user = manager.findUser(userId);

        // 5. 현재 비밀번호 확인
        if (!user.matchPassword(currentPassword)) {

            request.setAttribute(
                "error",
                "현재 비밀번호가 올바르지 않습니다."
            );

            return "/user/updatePasswordForm.jsp";
        }

        // 6. 새 비밀번호와 확인 비밀번호 비교
        if (!newPassword.equals(confirmPassword)) {

            request.setAttribute(
                "error",
                "새 비밀번호가 일치하지 않습니다."
            );

            return "/user/updatePasswordForm.jsp";
        }

        // 7. DB 비밀번호 변경
        manager.updatePassword(userId, newPassword);

        // 8. 마이페이지로 이동
        return "redirect:/user/mypage";
    }
}