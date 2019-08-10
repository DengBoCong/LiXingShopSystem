package com.power.dbc.Dao.Impl;

import com.power.dbc.Dao.UserDao;
import com.power.dbc.Model.LUserEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description: 面向数据库的用户类操作对象
 * @author: DBC
 * @create: 2019-08-09 09:33
 **/
@Service("userDao")
public class UserDaoImpl implements UserDao {
    @Qualifier("sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;

    /** 
    * @Description: 添加用户 
    * @Param:  LUserEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9 
    */ 
    @Override
    public boolean addUser(LUserEntity lUserEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<LUserEntity> list = session
                .createQuery("from LUserEntity where mobile = :mobile")
                .setParameter("mobile", lUserEntity.getMobile())
                .getResultList();
        if(!list.isEmpty()) return false;
        else{
            session.save(lUserEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /** 
    * @Description: 删除用户 
    * @Param:  LUserEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9 
    */
    @SuppressWarnings("unchecked")
    @Override
    public boolean deleteUser(int id) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LUserEntity lUserEntity = null;
        lUserEntity = (LUserEntity)session.get(LUserEntity.class, id);
        if(lUserEntity == null) return false;
        else{
            session.delete(lUserEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /** 
    * @Description: 更新用户类 
    * @Param:  LUserEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9 
    */
    @SuppressWarnings("unchecked")
    @Override
    public boolean updateUser(LUserEntity lUserEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction =session.beginTransaction();
        LUserEntity lUserEntity1 = null;
        lUserEntity1 = (LUserEntity)session.get(LUserEntity.class, lUserEntity.getId());
        if(lUserEntity1 == null) return false;
        else{
            if(lUserEntity.getAlipayOpenid() != null)
                lUserEntity1.setAlipayOpenid(lUserEntity.getAlipayOpenid());
            if(lUserEntity.getWeixinOpenid() != null)
                lUserEntity1.setWeixinOpenid(lUserEntity.getWeixinOpenid());
            if(lUserEntity.getBaiduOpenid() != null)
                lUserEntity1.setBaiduOpenid(lUserEntity.getBaiduOpenid());
            if(lUserEntity.getStatus() != 0)
                lUserEntity1.setStatus(lUserEntity.getStatus());
            if(lUserEntity.getPwd() != null)
                lUserEntity1.setPwd(lUserEntity.getPwd());
            if(lUserEntity.getUsername() != null)
                lUserEntity1.setUsername(lUserEntity.getUsername());
            if(lUserEntity.getMobile() != null)
                lUserEntity1.setMobile(lUserEntity.getMobile());
            if(lUserEntity.getEmail() != null)
                lUserEntity1.setEmail(lUserEntity.getEmail());
            if(lUserEntity.getGender() != 0)
                lUserEntity1.setGender(lUserEntity.getGender());
            if(lUserEntity.getAvatar() != null)
                lUserEntity1.setAvatar(lUserEntity.getAvatar());
            if(lUserEntity.getProvince() != null)
                lUserEntity1.setProvince(lUserEntity.getProvince());
            if(lUserEntity.getCity() != null)
                lUserEntity1.setCity(lUserEntity.getCity());
            if(lUserEntity.getBirthday() != 0)
                lUserEntity1.setBirthday(lUserEntity.getBirthday());
            if(lUserEntity.getAddress() != null)
                lUserEntity1.setAddress(lUserEntity.getAddress());
            if(lUserEntity.getIntegral() != 0)
                lUserEntity1.setIntegral(lUserEntity.getIntegral());
            if(lUserEntity.getSuperior() != 0)
                lUserEntity1.setSuperior(lUserEntity.getSuperior());
            if(lUserEntity.getUpdTime() != 0)
                lUserEntity1.setUpdTime(lUserEntity.getUpdTime());
            if(lUserEntity.getLicenceId() != 0)
                lUserEntity1.setLicenceId(lUserEntity.getLicenceId());
            if(lUserEntity.getRoleId() != 0)
                lUserEntity1.setRoleId(lUserEntity.getRoleId());
            if (lUserEntity.getOrderCount() != 0)
                lUserEntity1.setOrderCount(lUserEntity.getOrderCount());
            if(lUserEntity.getSellCount() != null)
                lUserEntity1.setSellCount(lUserEntity.getSellCount());

            session.update(lUserEntity1);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /** 
    * @Description: 通过手机号，即登录账号查询用户 
    * @Param:  String
    * @return:  LUserEntity
    * @Author: DBC
    * @Date: 2019/8/9 
    */ 
    @Override
    public LUserEntity listByMobile(String mobile) {
        Session session = sessionFactory.openSession();
        List<LUserEntity> list = session
                .createQuery("from LUserEntity where mobile = :mobile")
                .setParameter("mobile", mobile)
                .getResultList();
        session.close();
        if(list.isEmpty()) return null;
        else return list.get(0);
    }

    /** 
    * @Description: 直接查询所有用户类 
    * @Param:  
    * @return:  List<LUserEntity>
    * @Author: DBC
    * @Date: 2019/8/9 
    */ 
    @Override
    public List<LUserEntity> list() {
        Session session = sessionFactory.openSession();
        List<LUserEntity> list = session
                .createQuery("from LUserEntity").list();
        session.close();
        return list;
    }

    /** 
    * @Description: 通过某个时间到现在的新添加用户列表 
    * @Param:  int
    * @return:  List<LUserEntity>
    * @Author: DBC
    * @Date: 2019/8/9 
    */ 
    @Override
    public List<LUserEntity> listLowMills(int mills, int roleId) {
        Session session = sessionFactory.openSession();
        List<LUserEntity> list = session
                .createQuery("from LUserEntity where roleId = :roleId and addTime >= :mills")
                .setParameter("roleId", roleId).setParameter("mills", mills)
                .getResultList();
        session.close();
        return list;
    }

    /** 
    * @Description: 通过用户角色分组查询用户列表 
    * @Param:  int
    * @return:  List<LUserEntity>
    * @Author: DBC
    * @Date: 2019/8/9 
    */ 
    @Override
    public List<LUserEntity> listByRole(int roleId) {
        Session session = sessionFactory.openSession();
        List<LUserEntity> list = session
                .createQuery("from LUserEntity where roleId = :roleId")
                .setParameter("roleId", roleId)
                .getResultList();
        session.close();
        return list;
    }

    /** 
    * @Description: 通过上级查询下级用户列表
    * @Param:  
    * @return:  
    * @Author: DBC
    * @Date: 2019/8/9 
    */ 
    @Override
    public List<LUserEntity> listBySuperior(int superior) {
        Session session = sessionFactory.openSession();
        List<LUserEntity> list = session
                .createQuery("from LUserEntity where superior = :superior")
                .setParameter("superior", superior)
                .getResultList();
        session.close();
        return list;
    }

    /**
    * @Description: 查询所属用户角色下，销量前十的用户列表
    * @Param:
    * @return:
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @Override
    public List<LUserEntity> listByTop10(int roleId) {
        Session session = sessionFactory.openSession();
        List<LUserEntity> list = session
                .createQuery(" from LUserEntity where roleId = :roleId order by sellCount desc")
                .setParameter("roleId", roleId).setFirstResult(0).setMaxResults(10)
                .getResultList();
        session.close();
        return list;
    }

    @SuppressWarnings("unchecked")
    @Override
    public LUserEntity listById(int id) {
        Session session = sessionFactory.openSession();
        LUserEntity lUserEntity = null;
                lUserEntity = (LUserEntity)session.get(LUserEntity.class, id);
        session.close();
        return lUserEntity;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
