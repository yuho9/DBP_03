package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;
import model.User;
import model.service.UserManager;

public class MyPageController implements Controller {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        // 1. 현재 세션 가져오기
        HttpSession session = request.getSession();

        // 2. 로그인 여부 확인
        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        // 3. 현재 로그인한 사용자의 ID 가져오기
        String userId = UserSessionUtils.getLoginUserId(session);

        // 4. DB에서 사용자 정보 조회
        UserManager manager = UserManager.getInstance();
        User user = manager.findUser(userId);

        // 5. JSP에서 사용할 수 있도록 request에 저장
        request.setAttribute("user", user);

        // 6. 마이페이지 JSP로 이동
        return "/user/mypage.jsp";
    }
}