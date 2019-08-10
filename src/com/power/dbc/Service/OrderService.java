package com.power.dbc.Service;

import com.power.dbc.Model.Bean.SummaryTop3Count;
import com.power.dbc.Model.LOrderEntity;

import java.util.List;

public interface OrderService {
    public boolean addOrder(LOrderEntity lOrderEntity);
    public boolean deleteOrder(int id);
    public boolean updateOrder(LOrderEntity lOrderEntity);
    public LOrderEntity listByOrderNumber(String orderNumber);
    public List<LOrderEntity> list();
    public SummaryTop3Count listST3Count();
}
