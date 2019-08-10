package com.power.dbc.Service.Impl;

import com.power.dbc.Dao.AdminDao;
import com.power.dbc.Dao.UserDao;
import com.power.dbc.Model.Bean.UserKindCount;
import com.power.dbc.Model.LUserEntity;
import com.power.dbc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.DecimalFormat;
import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-09 09:52
 **/
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Qualifier("userDao")
    @Autowired
    private UserDao userDao;

    @Qualifier("adminDao")
    @Autowired
    private AdminDao adminDao;

    @Override
    public boolean addUser(LUserEntity lUserEntity) {
        return userDao.addUser(lUserEntity);
    }

    @Override
    public boolean deleteUser(int id) {
        return userDao.deleteUser(id);
    }

    @Override
    public boolean updateUser(LUserEntity lUserEntity) {
        return userDao.updateUser(lUserEntity);
    }

    @Override
    public LUserEntity listByMobile(String mobile) {
        return userDao.listByMobile(mobile);
    }

    @Override
    public List<LUserEntity> list() {
        return userDao.list();
    }

    @Override
    public UserKindCount listUKCount() {
        double adminCount = adminDao.list().size();
        double accountCount = userDao.list().size() + adminCount;
        double userCount = userDao.listByRole(0).size();
        double workerCount = userDao.listByRole(1).size() + adminCount;
        double factoryCount = userDao.listByRole(2).size();

        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        UserKindCount userKindCount = new UserKindCount();
        userKindCount.setAccountCount((int)accountCount);
        userKindCount.setUserCount((int)userCount);
        userKindCount.setWorkerCount((int)workerCount);
        userKindCount.setFactoryCount((int)factoryCount);
        userKindCount.setUserPercent(decimalFormat.format((userCount/accountCount)*100));
        userKindCount.setWorkerPercent(decimalFormat.format((workerCount/accountCount)*100));
        userKindCount.setFactoryPercent(decimalFormat.format((factoryCount/accountCount)*100));
        return userKindCount;
    }

    @Override
    public List<LUserEntity> listTop10List(int roleId) {
        return userDao.listByRole(roleId);
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public void setAdminDao(AdminDao adminDao) {
        this.adminDao = adminDao;
    }
}
