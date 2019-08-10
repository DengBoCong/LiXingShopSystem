package com.power.dbc.Model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-09 20:43
 **/
@Entity
@Table(name = "l_user", schema = "lixing", catalog = "")
public class LUserEntity {
    private int id;
    private String alipayOpenid;
    private String weixinOpenid;
    private String baiduOpenid;
    private byte status;
    private String pwd;
    private String username;
    private String mobile;
    private String email;
    private byte gender;
    private String avatar;
    private String province;
    private String city;
    private int birthday;
    private String address;
    private int integral;
    private int superior;
    private int addTime;
    private int updTime;
    private int licenceId;
    private int roleId;
    private int orderCount;
    private BigDecimal sellCount;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "alipay_openid", nullable = false, length = 100)
    public String getAlipayOpenid() {
        return alipayOpenid;
    }

    public void setAlipayOpenid(String alipayOpenid) {
        this.alipayOpenid = alipayOpenid;
    }

    @Basic
    @Column(name = "weixin_openid", nullable = false, length = 100)
    public String getWeixinOpenid() {
        return weixinOpenid;
    }

    public void setWeixinOpenid(String weixinOpenid) {
        this.weixinOpenid = weixinOpenid;
    }

    @Basic
    @Column(name = "baidu_openid", nullable = false, length = 100)
    public String getBaiduOpenid() {
        return baiduOpenid;
    }

    public void setBaiduOpenid(String baiduOpenid) {
        this.baiduOpenid = baiduOpenid;
    }

    @Basic
    @Column(name = "status", nullable = false)
    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    @Basic
    @Column(name = "pwd", nullable = false, length = 100)
    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Basic
    @Column(name = "username", nullable = false, length = 50)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "mobile", nullable = false, length = 15)
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 60)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "gender", nullable = false)
    public byte getGender() {
        return gender;
    }

    public void setGender(byte gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "avatar", nullable = false, length = 1000)
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Basic
    @Column(name = "province", nullable = false, length = 60)
    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    @Basic
    @Column(name = "city", nullable = false, length = 60)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "birthday", nullable = false)
    public int getBirthday() {
        return birthday;
    }

    public void setBirthday(int birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "address", nullable = false, length = 150)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "integral", nullable = false)
    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    @Basic
    @Column(name = "superior", nullable = false)
    public int getSuperior() {
        return superior;
    }

    public void setSuperior(int superior) {
        this.superior = superior;
    }

    @Basic
    @Column(name = "add_time", nullable = false)
    public int getAddTime() {
        return addTime;
    }

    public void setAddTime(int addTime) {
        this.addTime = addTime;
    }

    @Basic
    @Column(name = "upd_time", nullable = false)
    public int getUpdTime() {
        return updTime;
    }

    public void setUpdTime(int updTime) {
        this.updTime = updTime;
    }

    @Basic
    @Column(name = "licence_id", nullable = false)
    public int getLicenceId() {
        return licenceId;
    }

    public void setLicenceId(int licenceId) {
        this.licenceId = licenceId;
    }

    @Basic
    @Column(name = "role_id", nullable = false)
    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    @Basic
    @Column(name = "order_count", nullable = false)
    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    @Basic
    @Column(name = "sell_count", nullable = false, precision = 2)
    public BigDecimal getSellCount() {
        return sellCount;
    }

    public void setSellCount(BigDecimal sellCount) {
        this.sellCount = sellCount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LUserEntity that = (LUserEntity) o;
        return id == that.id &&
                status == that.status &&
                gender == that.gender &&
                birthday == that.birthday &&
                integral == that.integral &&
                superior == that.superior &&
                addTime == that.addTime &&
                updTime == that.updTime &&
                licenceId == that.licenceId &&
                roleId == that.roleId &&
                orderCount == that.orderCount &&
                Objects.equals(alipayOpenid, that.alipayOpenid) &&
                Objects.equals(weixinOpenid, that.weixinOpenid) &&
                Objects.equals(baiduOpenid, that.baiduOpenid) &&
                Objects.equals(pwd, that.pwd) &&
                Objects.equals(username, that.username) &&
                Objects.equals(mobile, that.mobile) &&
                Objects.equals(email, that.email) &&
                Objects.equals(avatar, that.avatar) &&
                Objects.equals(province, that.province) &&
                Objects.equals(city, that.city) &&
                Objects.equals(address, that.address) &&
                Objects.equals(sellCount, that.sellCount);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, alipayOpenid, weixinOpenid, baiduOpenid, status, pwd, username, mobile, email, gender, avatar, province, city, birthday, address, integral, superior, addTime, updTime, licenceId, roleId, orderCount, sellCount);
    }
}
