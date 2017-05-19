package cn.ming.service.serviceImpl;

import cn.ming.dao.LoginDao;
import cn.ming.domain.ResponseObj;
import cn.ming.domain.User;
import cn.ming.service.UserService;
import cn.ming.utils.GsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Ming on 2017-5-5.
 */
@Service("userService")
public class UserServiceImpl  implements UserService{
    @Autowired
    private LoginDao loginDao;
    private ResponseObj responseObj;

    public void get(User user) throws Exception {

    }

    public void update(User user) throws Exception {

    }

    public void remove(User user) throws Exception {

    }

    public void save(User user) throws Exception {

    }

    /**
     * 验证登陆信息并跳转主界面
     * @param
     * @return
     */
    public Object getLogin(HttpServletRequest request,HttpServletResponse response,User user,
    HttpSession session) {
       String username = user.getUsername();
       String  password = user.getPassword();
        Object result;
        responseObj = new ResponseObj<User>();
        //非空判断；
        if(username == null && password == null) {
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("用户名或密码不能为空");
            result= new GsonUtils().toJson(responseObj);
            return result;
        }
        //查找用户名是否存在
       int i = loginDao.getExistByName(username);
        if(i == 0){
            responseObj.setCode(ResponseObj.EMPUTY);
            responseObj.setMsg("用户不存在");
            result= new GsonUtils().toJson(responseObj);
        }else{
        //登陆密码验证
        String pwd = loginDao.getPwdByName(username);
        if(pwd.equals(password)) {
            user.setNexturl(request.getContextPath() + "/ming/home");
            responseObj = new ResponseObj<User>();
            responseObj.setCode(ResponseObj.OK);
            responseObj.setMsg(ResponseObj.OK_STR);
            user.setUsername(username);
            user.setPassword(password);
            responseObj.setData(user);
            session.setAttribute("userInfo", user);
            result = new GsonUtils().toJson(responseObj);

        } else{
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("密码输入错误");
            result= new GsonUtils().toJson(responseObj);

        }
        }
        return result;
    }
}
