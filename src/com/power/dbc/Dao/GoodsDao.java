package com.power.dbc.Dao;

import com.power.dbc.Model.LGoodsEntity;

import java.util.List;

public interface GoodsDao {
    public boolean addGoods(LGoodsEntity lGoodsEntity);
    public boolean deleteGoods(int id);
    public boolean updateGoods(LGoodsEntity lGoodsEntity);
    public LGoodsEntity listById(int id);
    public List<LGoodsEntity> list();
    public List<LGoodsEntity> listTop3SaleCount();
}
