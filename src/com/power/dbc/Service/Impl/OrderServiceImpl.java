package com.power.dbc.Service.Impl;

import com.power.dbc.Dao.OrderDao;
import com.power.dbc.Dao.UserDao;
import com.power.dbc.Domain.EnterpriseInfo.SummaryDo;
import com.power.dbc.Model.Bean.SummaryTop3Count;
import com.power.dbc.Model.LOrderEntity;
import com.power.dbc.Model.LUserEntity;
import com.power.dbc.Service.OrderService;
import com.power.dbc.Utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-08 22:53
 **/
@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
    @Qualifier("orderDao")
    @Autowired
    private OrderDao orderDao;

    @Qualifier("userDao")
    @Autowired
    private UserDao userDao;

    @Override
    public boolean addOrder(LOrderEntity lOrderEntity) {
        return orderDao.addOrder(lOrderEntity);
    }

    @Override
    public boolean deleteOrder(int id) {
        return orderDao.deleteOrder(id);
    }

    @Override
    public boolean updateOrder(LOrderEntity lOrderEntity) {
        return orderDao.updateOrder(lOrderEntity);
    }

    @Override
    public LOrderEntity listByOrderNumber(String orderNumber) {
        return orderDao.listByOrderNumber(orderNumber);
    }

    @Override
    public List<LOrderEntity> list() {
        return orderDao.list();
    }

    @Override
    public SummaryTop3Count listST3Count() {
        SummaryTop3Count summaryTop3Count = new SummaryTop3Count();
        List<LOrderEntity> list = orderDao.listLowMills(DateUtil.LastWeekTime());
        List<LUserEntity> list1 = userDao.listLowMills(DateUtil.LastWeekTime(), 0);
        List<LOrderEntity> list2 = orderDao.listLowMills(DateUtil.LastDayTime());
        List<LUserEntity> list3 = userDao.listLowMills(DateUtil.LastDayTime(), 0);
        summaryTop3Count.setOrderCount(list.size());
        summaryTop3Count.setSellCount(SummaryDo.returnSellCount(list));
        summaryTop3Count.setUserCount(list1.size());
        summaryTop3Count.setoCount(list2.size());
        summaryTop3Count.setsCount(SummaryDo.returnSellCount(list2));
        summaryTop3Count.setuCount(list3.size());
        return summaryTop3Count;
    }

    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
}
