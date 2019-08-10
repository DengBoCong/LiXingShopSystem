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
    private static final long ONE_WEEK_MILLS = 604800L;
    private static final long ONE_DAY_MILLS = 86400L;

    /**
    * @Description: 用于生成当前时间的int
    * @Param:
    * @return:  int
    * @Author: DBC
    * @Date: 2019/8/8
    */
    public static int NewDateInt(){
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
    public static Date IntToDate(int nowTimeInt){
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

    /**
    * @Description: 返回当前时间前一周的系统秒数
    * @Param:
    * @return:  int
    * @Author: DBC
    * @Date: 2019/8/8
    */
    public static int LastWeekTime(){
        long nowTimeMills = (System.currentTimeMillis() - ONE_WEEK_MILLS);
        return new Long(nowTimeMills).intValue();
    }

    /**
    * @Description: 返回当前时间前一天的系统秒数
    * @Param:
    * @return:
    * @Author: DBC
    * @Date: 2019/8/9
    */
    public static int LastDayTime(){
        long nowTimeMills = (System.currentTimeMillis() - ONE_DAY_MILLS);
        return new Long(nowTimeMills).intValue();
    }

    /**
    * @Description: 返回系统当前时间的系统秒数
    * @Param:
    * @return:
    * @Author: DBC
    * @Date: 2019/8/9
    */
    public static int NowTime(){
        long NowTimeMills = System.currentTimeMillis()/1000;
        return new Long(NowTimeMills).intValue();
    }
}
