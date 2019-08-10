package com.power.dbc.Domain.EnterpriseInfo;

import com.power.dbc.Model.LOrderEntity;

import java.math.BigDecimal;
import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-08 23:51
 **/
public class SummaryDo {
    /**
    * @Description: 计算出List中销售额的总和
    * @Param:
    * @return:
    * @Author: DBC
    * @Date: 2019/8/8
    */

    public static double returnSellCount(List<LOrderEntity> list){
       BigDecimal sum = BigDecimal.valueOf(0.00);
        for(LOrderEntity item : list){
            sum.add(item.getPayPrice());
        }
        return sum.doubleValue();
    }
}
