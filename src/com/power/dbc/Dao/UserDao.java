package com.power.dbc.Dao;

import com.power.dbc.Model.LUserEntity;

import java.util.List;

public interface UserDao {
    public boolean addUser(LUserEntity lUserEntity);
    public boolean deleteUser(int id);
    public boolean updateUser(LUserEntity lUserEntity);
    public LUserEntity listByMobile(String mobile);
    public List<LUserEntity> list();
    public List<LUserEntity> listLowMills(int mills, int roleId);
    public List<LUserEntity> listByRole(int roleId);
    public List<LUserEntity> listBySuperior(int superior);
    public List<LUserEntity> listByTop10(int roleId);
    public LUserEntity listById(int id);
}
