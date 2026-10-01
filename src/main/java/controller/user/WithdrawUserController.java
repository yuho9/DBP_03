package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.User;
import model.service.UserManager;

public class WithdrawUserController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();

        // 1. 로그인 여부 확인
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        // 2. 현재 로그인한 사용자 ID 가져오기
        String userId = UserSessionUtils.getLoginUserId(session);

        // 3. 사용자가 입력한 현재 비밀번호
        String password = request.getParameter("password");

        UserManager manager = UserManager.getInstance();

        // 4. DB에서 현재 사용자 조회
        User user = manager.findUser(userId);

        // 5. 비밀번호 확인
        if (!user.matchPassword(password)) {

            request.setAttribute(
                "error",
                "현재 비밀번호가 올바르지 않습니다."
            );

            return "/user/withdrawForm.jsp";
        }

        // 6. 회원 삭제
        manager.remove(userId);

        // 7. 로그인 세션 삭제
        session.invalidate();

        // 8. 홈으로 이동
        return "redirect:/home.jsp";
    }
}