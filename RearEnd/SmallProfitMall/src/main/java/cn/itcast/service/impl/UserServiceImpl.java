package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("accountService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao accountDao;

    public List<User> findAll() {
        System.out.println("业务层：查询所有账户...");
        return accountDao.findAll();
    }

    public void saveAccount(User user) {
        System.out.println("业务层：保存帐户...");
        accountDao.saveAccount(user);
    }
}
