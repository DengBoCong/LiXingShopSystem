package com.power.dbc.Service.Impl;

import com.power.dbc.Dao.GoodsDao;
import com.power.dbc.Model.LGoodsEntity;
import com.power.dbc.Service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-09 21:32
 **/
@Service("goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {
    @Qualifier("goodsDao")
    @Autowired
    private GoodsDao goodsDao;

    @Override
    public boolean addGoods(LGoodsEntity lGoodsEntity) {
        return goodsDao.addGoods(lGoodsEntity);
    }

    @Override
    public boolean deleteGoods(int id) {
        return goodsDao.deleteGoods(id);
    }

    @Override
    public boolean updateGoods(LGoodsEntity lGoodsEntity) {
        return goodsDao.updateGoods(lGoodsEntity);
    }

    @Override
    public LGoodsEntity listById(int id) {
        return goodsDao.listById(id);
    }

    @Override
    public List<LGoodsEntity> list() {
        return goodsDao.list();
    }

    @Override
    public List<LGoodsEntity> listTop3SaleCount() {
        return goodsDao.listTop3SaleCount();
    }

    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }
}
