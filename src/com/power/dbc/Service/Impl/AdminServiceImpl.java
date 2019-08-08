package com.power.dbc.Service.Impl;

import com.power.dbc.Dao.AdminDao;
import com.power.dbc.Model.LAdminEntity;
import com.power.dbc.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-07 21:21
 **/
@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {
    @Qualifier("adminDao")
    @Autowired
    private AdminDao adminDao;

    @Override
    public boolean addAdmin(LAdminEntity lAdminEntity) {
        return adminDao.addAdmin(lAdminEntity);
    }

    @Override
    public boolean deleteAdmin(LAdminEntity lAdminEntity) {
        return adminDao.deleteAdmin(lAdminEntity);
    }

    @Override
    public List<LAdminEntity> listByMobile(String mobile) {
        return adminDao.listByMobile(mobile);
    }

    @Override
    public List<LAdminEntity> list() {
        return adminDao.list();
    }

    public void setAdminDao(AdminDao adminDao) {
        this.adminDao = adminDao;
    }
}
