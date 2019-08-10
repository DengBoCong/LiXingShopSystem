package com.power.dbc.Service;

import com.power.dbc.Model.Bean.UserKindCount;
import com.power.dbc.Model.LUserEntity;

import java.util.List;

public interface UserService {
    public boolean addUser(LUserEntity lUserEntity);
    public boolean deleteUser(int id);
    public boolean updateUser(LUserEntity lUserEntity);
    public LUserEntity listByMobile(String mobile);
    public List<LUserEntity> list();
    public UserKindCount listUKCount();
    public List<LUserEntity> listTop10List(int roleId);
}
