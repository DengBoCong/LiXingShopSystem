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

    @SuppressWarnings("unchecked")
    @Override
    public boolean deleteAdmin(int id) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LAdminEntity lAdminEntity = null;
        lAdminEntity = (LAdminEntity)session.get(LAdminEntity.class, id);
        if(lAdminEntity == null) return false;
        else{
            session.delete(lAdminEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /**
    * @Description: 更新管理用户
    * @Param:  LAdminEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @SuppressWarnings("unchecked")
    @Override
    public boolean updateAdmin(LAdminEntity lAdminEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LAdminEntity lAdminEntity1 = null;
        lAdminEntity1 = (LAdminEntity)session.get(LAdminEntity.class, lAdminEntity.getId());
        if(lAdminEntity1 == null) return false;
        else{
            if(lAdminEntity.getUsername() != null)
                lAdminEntity1.setUsername(lAdminEntity.getUsername());
            if(lAdminEntity.getPassword() != null)
                lAdminEntity1.setPassword(lAdminEntity.getPassword());
            if(lAdminEntity.getLoginTotal() != 0)
                lAdminEntity1.setLoginTotal(lAdminEntity.getLoginTotal());
            if(lAdminEntity.getLoginTime() != 0)
                lAdminEntity1.setLoginTime(lAdminEntity.getLoginTime());
            if(lAdminEntity.getRoleId() != 0)
                lAdminEntity1.setRoleId(lAdminEntity.getRoleId());
            if(lAdminEntity.getGender() != 0)
                lAdminEntity1.setGender(lAdminEntity.getGender());
            if(lAdminEntity.getMobile() != null)
                lAdminEntity1.setMobile(lAdminEntity.getMobile());
            if(lAdminEntity.getAddTime() != 0)
                lAdminEntity1.setAddTime(lAdminEntity.getAddTime());
            if(lAdminEntity.getUpdTime() != 0)
                lAdminEntity1.setUpdTime(lAdminEntity.getUpdTime());
            if(lAdminEntity.getImage() != null)
                lAdminEntity1.setImage(lAdminEntity.getImage());

            session.update(lAdminEntity1);
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

    /**
    * @Description: 通过管理员的ID进行查询用户信息
    * @Param:  int
    * @return:  LAdminEntity
    * @Author: DBC
    * @Date: 2019/8/10
    */
    @SuppressWarnings("unchecked")
    @Override
    public LAdminEntity listById(int id) {
        Session session = sessionFactory.openSession();
        LAdminEntity lAdminEntity = null;
        lAdminEntity = (LAdminEntity)session.get(LAdminEntity.class, id);
        session.close();
        return lAdminEntity;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
