package cn.ming.service;

/**
 * Created by Ming on 2017-5-4.
 */
//创建一个BaseService接口，用泛型解耦
public interface BaseService<T> {

    /**
     * 获取方法的实例
     * @param t
     * @throws Exception
     */
    void get(T t) throws Exception;
    void update(T t) throws Exception;
    void remove(T t) throws Exception;
    void save(T t) throws Exception;
}
