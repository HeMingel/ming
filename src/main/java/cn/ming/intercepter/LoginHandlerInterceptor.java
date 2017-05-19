package cn.ming.intercepter;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Ming on 2017-5-8.
 */
public class LoginHandlerInterceptor extends HandlerInterceptorAdapter {

    //不对匹配该值的访问路径拦截（正则）
    String NO_INTERCEPTOR_PATH = ".*/((login)|(reg)|(logout)|(code)|(app)|(weixin)|(firstPage)|(home)|(ming)|" +
            "(static)|(main)|(websocket)).*";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //获取路径
        String path =  request.getContextPath();

        //匹配正则表达式不拦截
       if (path.matches(NO_INTERCEPTOR_PATH)) {
            return true;
       }else{
           //session 是否存在用户信息 不存在则是为未登录状态
           if (request.getSession().getAttribute("userInfo")==null) {
                response.sendRedirect(request.getContextPath()+"/ming/firstPage");
               return false;
           }
       }

        return true;
    }

}
