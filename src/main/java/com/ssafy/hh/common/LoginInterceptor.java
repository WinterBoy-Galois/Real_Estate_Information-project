//package com.ssafy.hh.common;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//import com.ssafy.hh.member.dto.MemberDto;
//
//@Component
//public class LoginInterceptor extends HandlerInterceptorAdapter {
//
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//
//        HttpSession session = request.getSession();
//        MemberDto memberDto = (MemberDto) session.getAttribute("memberDto");
//        if( memberDto == null ) {
//        	request.getRequestDispatcher("/login").forward(request, response);
//        	return false;
//        }
//
//        return super.preHandle(request, response, handler);
//    }
//}