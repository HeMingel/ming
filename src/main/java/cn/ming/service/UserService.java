package cn.ming.service;

import cn.ming.domain.User;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Ming on 2017-5-4.
 */
@Service
public interface UserService extends BaseService<User> {

    Object getLogin(HttpServletRequest request, HttpServletResponse response, User user,
             HttpSession session);

}
