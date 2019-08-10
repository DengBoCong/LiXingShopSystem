package com.power.dbc.Model.Bean;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-09 10:32
 **/
public class UserKindCount {
    private int accountCount;
    private int userCount;
    private int workerCount;
    private int factoryCount;
    private String userPercent;
    private String workerPercent;
    private String factoryPercent;

    public int getAccountCount() {
        return accountCount;
    }

    public void setAccountCount(int accountCount) {
        this.accountCount = accountCount;
    }

    public int getUserCount() {
        return userCount;
    }

    public void setUserCount(int userCount) {
        this.userCount = userCount;
    }

    public int getWorkerCount() {
        return workerCount;
    }

    public void setWorkerCount(int workerCount) {
        this.workerCount = workerCount;
    }

    public int getFactoryCount() {
        return factoryCount;
    }

    public void setFactoryCount(int factoryCount) {
        this.factoryCount = factoryCount;
    }

    public String getUserPercent() {
        return userPercent;
    }

    public void setUserPercent(String userPercent) {
        this.userPercent = userPercent;
    }

    public String getWorkerPercent() {
        return workerPercent;
    }

    public void setWorkerPercent(String workerPercent) {
        this.workerPercent = workerPercent;
    }

    public String getFactoryPercent() {
        return factoryPercent;
    }

    public void setFactoryPercent(String factoryPercent) {
        this.factoryPercent = factoryPercent;
    }
}
