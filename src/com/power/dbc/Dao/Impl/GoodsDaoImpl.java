package com.power.dbc.Dao.Impl;

import com.power.dbc.Dao.GoodsDao;
import com.power.dbc.Model.LGoodsEntity;
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
 * @create: 2019-08-09 20:54
 **/
@Service("goodsDao")
public class GoodsDaoImpl implements GoodsDao {
    @Qualifier("sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;

    /**
    * @Description: 添加商品类
    * @Param:  LGoodsEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @Override
    public boolean addGoods(LGoodsEntity lGoodsEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<LGoodsEntity> list = session
                .createQuery("from LGoodsEntity where title = :title")
                .setParameter("title", lGoodsEntity.getTitle())
                .getResultList();
        if(!list.isEmpty()) return false;
        else{
            session.save(lGoodsEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /**
    * @Description: 删除商品类
    * @Param:  int
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @SuppressWarnings("unchecked")
    @Override
    public boolean deleteGoods(int id) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LGoodsEntity lGoodsEntity = null;
        lGoodsEntity = (LGoodsEntity)session.get(LGoodsEntity.class, id);
        if(lGoodsEntity == null) return false;
        else{
            session.delete(lGoodsEntity);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /**
    * @Description: 更新商品类
    * @Param:  LGoodsEntity
    * @return:  boolean
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @SuppressWarnings("unchecked")
    @Override
    public boolean updateGoods(LGoodsEntity lGoodsEntity) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        LGoodsEntity lGoodsEntity1 = null;
        lGoodsEntity1 = (LGoodsEntity)session.get(LGoodsEntity.class, lGoodsEntity.getId());
        if(lGoodsEntity1 == null) return false;
        else{
            if(lGoodsEntity.getBrandId() != 0)
                lGoodsEntity1.setBrandId(lGoodsEntity.getBrandId());
            if(lGoodsEntity.getTitle() != null)
                lGoodsEntity1.setTitle(lGoodsEntity.getTitle());
            if(lGoodsEntity.getTitleColor() != null)
                lGoodsEntity1.setTitleColor(lGoodsEntity.getTitleColor());
            if(lGoodsEntity.getParameterId() != 0)
                lGoodsEntity1.setParameterId(lGoodsEntity.getParameterId());
            if(lGoodsEntity.getFactoryOrigin() != 0)
                lGoodsEntity1.setFactoryOrigin(lGoodsEntity.getFactoryOrigin());
            if(lGoodsEntity.getInventory() != 0)
                lGoodsEntity1.setInventory(lGoodsEntity.getInventory());
            if(lGoodsEntity.getInventoryUnit() != null)
                lGoodsEntity1.setInventoryUnit(lGoodsEntity.getInventoryUnit());
            if(lGoodsEntity.getImages() != null)
                lGoodsEntity1.setImages(lGoodsEntity.getImages());
            if(lGoodsEntity.getOriginalPrice() != null)
                lGoodsEntity1.setOriginalPrice(lGoodsEntity.getOriginalPrice());
            if(lGoodsEntity.getFactoryPrice() != null)
                lGoodsEntity1.setFactoryPrice(lGoodsEntity.getFactoryPrice());
            if(lGoodsEntity.getGuidePrice() != null)
                lGoodsEntity1.setGuidePrice(lGoodsEntity.getGuidePrice());
            if(lGoodsEntity.getBuyMaxNumber() != 0)
                lGoodsEntity1.setBuyMaxNumber(lGoodsEntity.getBuyMaxNumber());
            if(lGoodsEntity.getBuyMinNumber() != 0)
                lGoodsEntity1.setBuyMinNumber(lGoodsEntity.getBuyMinNumber());
            if(lGoodsEntity.getIsDeductionInventory() != 0)
                lGoodsEntity1.setIsDeductionInventory(lGoodsEntity.getIsDeductionInventory());
            if(lGoodsEntity.getIsShelves() != 0)
                lGoodsEntity1.setIsShelves(lGoodsEntity.getIsShelves());
            if(lGoodsEntity.getIsHomeRecommended() != 0)
                lGoodsEntity1.setIsHomeRecommended(lGoodsEntity.getIsHomeRecommended());
            if(lGoodsEntity.getContent() != null)
                lGoodsEntity1.setContent(lGoodsEntity.getContent());
            if(lGoodsEntity.getPhotoCount() != 0)
                lGoodsEntity1.setPhotoCount(lGoodsEntity.getPhotoCount());
            if(lGoodsEntity.getSalesCount() != 0)
                lGoodsEntity1.setSalesCount(lGoodsEntity.getSalesCount());
            if(lGoodsEntity.getAccessCount() != 0)
                lGoodsEntity1.setAccessCount(lGoodsEntity.getAccessCount());
            if(lGoodsEntity.getVideo() != null)
                lGoodsEntity1.setVideo(lGoodsEntity.getVideo());
            if(lGoodsEntity.getHomeRecommendedImages() != null)
                lGoodsEntity1.setHomeRecommendedImages(lGoodsEntity.getHomeRecommendedImages());
            if(lGoodsEntity.getAddTime() != 0)
                lGoodsEntity1.setAddTime(lGoodsEntity.getAddTime());
            if(lGoodsEntity.getUpdTime() != 0)
                lGoodsEntity1.setUpdTime(lGoodsEntity.getUpdTime());
            if(lGoodsEntity.getAfterSalesInstruction() != null)
                lGoodsEntity1.setAfterSalesInstruction(lGoodsEntity.getAfterSalesInstruction());

            session.update(lGoodsEntity1);
            transaction.commit();
            session.close();
            return true;
        }
    }

    /**
    * @Description: 通过id查询商品列表
    * @Param:  int
    * @return:  LGoodsEntity
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @SuppressWarnings("unchecked")
    @Override
    public LGoodsEntity listById(int id) {
        Session session = sessionFactory.openSession();
        LGoodsEntity lGoodsEntity = null;
        lGoodsEntity = (LGoodsEntity)session.get(LGoodsEntity.class, id);
        session.close();
        return lGoodsEntity;
    }

    /**
    * @Description: 一次性查询全部商品
    * @Param:
    * @return: List<LGoodsEntity>
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @Override
    public List<LGoodsEntity> list() {
        Session session = sessionFactory.openSession();
        List<LGoodsEntity> list = session
                .createQuery("from LGoodsEntity order by title asc ").list();
        session.close();
        return list;
    }

    /**
    * @Description: 查询销量前三的商品
    * @Param:
    * @return:  List<LGoodsEntity>
    * @Author: DBC
    * @Date: 2019/8/9
    */
    @Override
    public List<LGoodsEntity> listTop3SaleCount() {
        Session session = sessionFactory.openSession();
        List<LGoodsEntity> list = session
                .createQuery("from LGoodsEntity order by salesCount desc")
                .setFirstResult(0).setMaxResults(3)
                .getResultList();
        session.close();
        return list;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
