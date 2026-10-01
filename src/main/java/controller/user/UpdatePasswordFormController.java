package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;

public class UpdatePasswordFormController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();

        // 로그인하지 않은 사용자는 접근 불가
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        return "/user/updatePasswordForm.jsp";
    }
}