package com.power.dbc.Dao;

import com.power.dbc.Model.LAdminEntity;

import java.util.List;

public interface AdminDao {
    public boolean addAdmin(LAdminEntity lAdminEntity);
    public boolean deleteAdmin(LAdminEntity lAdminEntity);
    public List<LAdminEntity> listByMobile(String mobile);
    public List<LAdminEntity> list();
}
