package com.power.dbc.Service;

import com.power.dbc.Model.LAdminEntity;

import java.util.List;

public interface AdminService {
    public boolean addAdmin(LAdminEntity lAdminEntity);
    public boolean deleteAdmin(int id);
    public List<LAdminEntity> listByMobile(String mobile);
    public List<LAdminEntity> list();
    public boolean updateAdmin(LAdminEntity lAdminEntity);
    public LAdminEntity listById(int id);
}
