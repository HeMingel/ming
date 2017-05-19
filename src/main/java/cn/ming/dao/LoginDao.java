package cn.ming.dao;

import cn.ming.domain.User;

/**
 * Created by Ming on 2017-5-4.
 */
public interface LoginDao extends Dao<User>{
    /**
     * 根据用户名查询密码
     * @param username 用户名
     * @return 密码
     */
    String getPwdByName(String username);

    /**
     * 根据用户名查询是否存在用户
     * @param username 用户名
     * @return 1 存在  0 不存在
     */
    int getExistByName(String username);
}
