package com.power.dbc.Utils;

import java.util.List;

/**
 * @program: LiXingShopSystem
 * @description: 列表与单个之间的转换
 * @author: DBC
 * @create: 2019-08-08 19:09
 **/
public class ListToEntityUtil {
    /**
    * @Description:  列表转换为单个
    * @Param:  T
    * @return:  T
    * @Author: DBC
    * @Date: 2019/8/8
    */
    public static <T> T ListToO(List<T> list, int index){
        if(list.isEmpty()) return null;
        else return list.get(index);
    }
}
