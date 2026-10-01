package controller.user;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import controller.Controller;

public class WithdrawUserFormController implements Controller {

    @Override
    public String execute(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();

        if (!UserSessionUtils.hasLogined(session)) {
            return "redirect:/user/login/form";
        }

        return "/user/withdrawForm.jsp";
    }
}