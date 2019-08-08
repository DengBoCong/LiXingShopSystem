package com.power.dbc.Utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @program: LiXingShopSystem
 * @description: 时间工具
 * @author: DBC
 * @create: 2019-08-08 17:00
 **/
public class DateUtil {
    /**
    * @Description: 用于生成当前时间的int
    * @Param:
    * @return:  int
    * @Author: DBC
    * @Date: 2019/8/8
    */
    public static Integer newDateInt(){
        long nowTime = System.currentTimeMillis()/1000;
        return new Long(nowTime).intValue();
    }

    /**
    * @Description: 将int转化为Date格式
    * @Param:  int
    * @return:  Date
    * @Author: DBC
    * @Date: 2019/8/8
    */
    public static Date intToDate(int nowTimeInt){
        Date nowTimeDate = null;
        try{
            long nowTimeLong = new Long(nowTimeInt).longValue()*1000;
            DateFormat ymdhmsFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String nowTimeStr = ymdhmsFormat.format(nowTimeLong);
            nowTimeDate = ymdhmsFormat.parse(nowTimeStr);
        }catch (ParseException e){
            e.printStackTrace();
            System.out.println("时间转换出现错误!");
        }
        return nowTimeDate;
    }
}
