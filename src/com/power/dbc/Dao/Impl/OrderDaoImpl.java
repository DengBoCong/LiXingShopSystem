package com.power.dbc.Dao.Impl;

import com.power.dbc.Dao.OrderDao;
import com.power.dbc.Model.LOrderEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-08 19:01
 **/
@Service("orderDao")
public class OrderDaoImpl implements OrderDao {
    @Qualifier("sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public boolean addOrder(LOrderEntity lOrderEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<LOrderEntity> lOrderEntity1 = null;
        lOrderEntity1 = session
                .createQuery("from LOrderEntity where orderNo = :orderNo")
                .setParameter("orderNo", lOrderEntity.getOrderNo())
                .getResultList();
        if(!lOrderEntity1.isEmpty()) return false;
        else{
            session.save(lOrderEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean deleteOrder(int id) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LOrderEntity lOrderEntity = null;
        lOrderEntity = (LOrderEntity)session.get(LOrderEntity.class, id);
        if(lOrderEntity == null) return false;
        else{
            session.delete(lOrderEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /**
    * @Description: 更新订单类
    * @Param:  LOrderEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @SuppressWarnings("unchecked")
    @Override
    public boolean updateOrder(LOrderEntity lOrderEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LOrderEntity lOrderEntity1 = null;
        lOrderEntity1 = (LOrderEntity)session.get(LOrderEntity.class, lOrderEntity.getId());
        if(lOrderEntity1 == null) return false;
        else{
            if(lOrderEntity.getReceiveAddress() != null)
                lOrderEntity1.setReceiveAddress(lOrderEntity.getReceiveAddress());
            if(lOrderEntity.getReceiveName() != null)
                lOrderEntity1.setReceiveName(lOrderEntity.getReceiveName());
            if(lOrderEntity.getReceiveTel() != null)
                lOrderEntity1.setReceiveTel(lOrderEntity.getReceiveTel());
            if(lOrderEntity.getReceiveProvince() != 0)
                lOrderEntity1.setReceiveProvince(lOrderEntity.getReceiveProvince());
            if(lOrderEntity.getReceiveCity() != 0)
                lOrderEntity1.setReceiveCity(lOrderEntity.getReceiveCity());
            if(lOrderEntity.getReceiveCounty() != 0)
                lOrderEntity1.setReceiveCounty(lOrderEntity.getReceiveCounty());
            if(lOrderEntity.getUserNote() != null)
                lOrderEntity1.setUserNote(lOrderEntity.getUserNote());
            if(lOrderEntity.getExpressId() != 0)
                lOrderEntity1.setExpressId(lOrderEntity.getExpressId());
            if(lOrderEntity.getExpressNumber() != null)
                lOrderEntity1.setExpressNumber(lOrderEntity.getExpressNumber());
            if(lOrderEntity.getStatus() != 0)
                lOrderEntity1.setStatus(lOrderEntity.getStatus());
            if(lOrderEntity.getPayStatus() != 0)
                lOrderEntity1.setPayStatus(lOrderEntity.getPayStatus());
            if(lOrderEntity.getPreferentialPrice() != null)
                lOrderEntity1.setPreferentialPrice(lOrderEntity.getPreferentialPrice());
            if(lOrderEntity.getPrice() != null)
                lOrderEntity1.setPrice(lOrderEntity.getPrice());
            if(lOrderEntity.getTotalPrice() != null)
                lOrderEntity1.setTotalPrice(lOrderEntity.getTotalPrice());
            if(lOrderEntity.getPayPrice() != null)
                lOrderEntity1.setPayPrice(lOrderEntity.getPayPrice());
            if(lOrderEntity.getPayTime() != 0)
                lOrderEntity1.setPayTime(lOrderEntity.getPayTime());
            if(lOrderEntity.getConfirmTime() != 0)
                lOrderEntity1.setConfirmTime(lOrderEntity.getConfirmTime());
            if(lOrderEntity.getDeliveryTime() != 0)
                lOrderEntity1.setDeliveryTime(lOrderEntity.getDeliveryTime());
            if(lOrderEntity.getCancelTime() != 0)
                lOrderEntity1.setCancelTime(lOrderEntity.getCancelTime());
            if(lOrderEntity.getCollectTime() != 0)
                lOrderEntity1.setCollectTime(lOrderEntity.getCollectTime());
            if(lOrderEntity.getCloseTime() != 0)
                lOrderEntity1.setCloseTime(lOrderEntity.getCloseTime());
            if(lOrderEntity.getUpdTime() != 0)
                lOrderEntity1.setUpdTime(lOrderEntity.getUpdTime());
            if(lOrderEntity.getAddTime() != 0)
                lOrderEntity1.setAddTime(lOrderEntity.getAddTime());
            session.update(lOrderEntity1);
            transaction.commit();
            session.close();
            return true;
        }
    }

    @Override
    public LOrderEntity listByOrderNumber(String orderNumber) {
        Session session = sessionFactory.openSession();
        List<LOrderEntity> list = session
                .createQuery("from LOrderEntity where orderNo = :orderNo")
                .setParameter("orderNo", orderNumber)
                .getResultList();
        if(list.isEmpty()) return null;
        else {
            session.close();
            return list.get(0);
        }
    }

    @Override
    public List<LOrderEntity> list() {
        Session session = sessionFactory.openSession();
        List<LOrderEntity> list = session
                .createQuery("from LOrderEntity").list();
        session.close();
        return list;
    }

    @Override
    public List<LOrderEntity> listLowMills(int mills) {
        Session session = sessionFactory.openSession();
        List<LOrderEntity> list = session
                .createQuery("from LOrderEntity where closeTime >= :mills")
                .setParameter("mills", mills)
                .getResultList();
        /*HQL查询语句：select count(*), sum(price) from LOrderEntity where closeTime >- :mills*/
        session.close();
        return list;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
