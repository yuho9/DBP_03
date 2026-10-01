package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;

public class LogoutController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//세션에 저장된 사용자 이이디를 삭제하고 세션을 무효화 함 
		HttpSession session = request.getSession();
		session.removeAttribute(UserSessionUtils.USER_SESSION_KEY);
		// 세션 전체 무효화
		session.invalidate();		
        
		return "redirect:/home.jsp";	//  // 로그아웃 후 홈페이지로 이동
    }
}
