package com.power.dbc.Dao.Impl;

import com.power.dbc.Dao.AdminDao;
import com.power.dbc.Model.LAdminEntity;
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
 * @create: 2019-08-07 16:34
 **/
@Service("adminDao")
public class AdminDaoImpl implements AdminDao {
    @Qualifier("sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public boolean addAdmin(LAdminEntity lAdminEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<LAdminEntity> lAdminEntity1 = session.createQuery("from LAdminEntity where mobile = :mobile")
                .setParameter("mobile", lAdminEntity.getMobile())
                .getResultList();
        if(!lAdminEntity1.isEmpty()) return false;
        else{
            session.save(lAdminEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    @Override
    public boolean deleteAdmin(LAdminEntity lAdminEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<LAdminEntity> lAdminEntity1 = session.createQuery("from LAdminEntity where mobile = :mobile")
                .setParameter("mobile", lAdminEntity.getMobile())
                .getResultList();
        if(lAdminEntity1.isEmpty()) return false;
        else{
            session.delete(lAdminEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    @Override
    public List<LAdminEntity> listByMobile(String mobile) {
        Session session = sessionFactory.openSession();
        List<LAdminEntity> list = session.createQuery("from LAdminEntity where mobile = :mobile")
                .setParameter("mobile", mobile)
                .getResultList();
        session.close();
        return list;
    }

    @Override
    public List<LAdminEntity> list() {
        Session session = sessionFactory.openSession();
        List<LAdminEntity> list = session.createQuery("from LAdminEntity").list();
        session.close();
        return list;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
