package com.power.dbc.Dao;

import com.power.dbc.Model.LOrderEntity;

import java.util.List;

public interface OrderDao {
    public boolean addOrder(LOrderEntity lOrderEntity);
    public boolean deleteOrder(int id);
    public boolean updateOrder(LOrderEntity lOrderEntity);
    public LOrderEntity listByOrderNumber(String orderNumber);
    public List<LOrderEntity> list();
    public List<LOrderEntity> listLowMills(int mills);
}
