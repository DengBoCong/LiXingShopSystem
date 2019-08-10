package com.power.dbc.Utils;

import com.power.dbc.Model.LGoodsEntity;

import java.math.BigDecimal;

/**
 * @program: LiXingShopSystem
 * @description: 实体类初始化工具
 * @author: DBC
 * @create: 2019-08-09 22:37
 **/
public class EntityInitUtil {
    /**
    * @Description: 商品初始化实体类
    * @Param:
    * @return:  LGoodsEntity
    * @Author: DBC
    * @Date: 2019/8/9
    */
    public static LGoodsEntity InitLGoodsEntity(){
        LGoodsEntity lGoodsEntity = new LGoodsEntity();
        lGoodsEntity.setAfterSalesInstruction(" ");
        lGoodsEntity.setHomeRecommendedImages(" ");
        lGoodsEntity.setVideo(" ");
        lGoodsEntity.setContent(" ");
        lGoodsEntity.setImages(" ");
        lGoodsEntity.setInventoryUnit(" ");
        lGoodsEntity.setTitleColor(" ");
        lGoodsEntity.setOriginalPrice(BigDecimal.valueOf(0.00));
        lGoodsEntity.setFactoryPrice(BigDecimal.valueOf(0.00));
        lGoodsEntity.setGuidePrice(BigDecimal.valueOf(0.00));
        return lGoodsEntity;
    }
}
