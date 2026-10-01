package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.service.UserManager;

public class LoginController implements Controller {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String userId = request.getParameter("userId");
        String password = request.getParameter("password");

        try {
            // 로그인 확인
            UserManager manager = UserManager.getInstance();
            manager.login(userId, password);

            // 로그인 성공 → 세션에 사용자 ID 저장
            HttpSession session = request.getSession();
            session.setAttribute(UserSessionUtils.USER_SESSION_KEY, userId);

            // 관리자 계정(admin/admin)인지 확인
            if ("admin".equals(userId) && "admin".equals(password)) {
                // 관리자 → 회원 목록
                return "redirect:/user/list";
            } else {
                // 일반 회원 → 홈페이지
                return "redirect:/home.jsp";
            }

        } catch (Exception e) {

            // 로그인 실패
            request.setAttribute("loginFailed", true);
            request.setAttribute("exception", e);

            return "/user/loginForm.jsp";
        }
    }
}