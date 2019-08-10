package com.power.dbc.Model.Bean;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-08 23:24
 **/
public class SummaryTop3Count {
    private int oCount;
    private int orderCount;
    private double sCount;
    private double sellCount;
    private int uCount;
    private int userCount;

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    public double getSellCount() {
        return sellCount;
    }

    public void setSellCount(double sellCount) {
        this.sellCount = sellCount;
    }

    public int getUserCount() {
        return userCount;
    }

    public void setUserCount(int userCount) {
        this.userCount = userCount;
    }

    public int getoCount() {
        return oCount;
    }

    public void setoCount(int oCount) {
        this.oCount = oCount;
    }

    public double getsCount() {
        return sCount;
    }

    public void setsCount(double sCount) {
        this.sCount = sCount;
    }

    public int getuCount() {
        return uCount;
    }

    public void setuCount(int uCount) {
        this.uCount = uCount;
    }
}
