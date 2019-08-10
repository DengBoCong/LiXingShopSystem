package com.power.dbc.Model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-09 20:42
 **/
@Entity
@Table(name = "l_order", schema = "lixing", catalog = "")
public class LOrderEntity {
    private int id;
    private String orderNo;
    private int userId;
    private int shopId;
    private int receiveAddressId;
    private String receiveName;
    private String receiveTel;
    private int receiveProvince;
    private int receiveCity;
    private int receiveCounty;
    private String receiveAddress;
    private String userNote;
    private int expressId;
    private String expressNumber;
    private int paymentId;
    private byte status;
    private byte payStatus;
    private BigDecimal preferentialPrice;
    private BigDecimal price;
    private BigDecimal totalPrice;
    private BigDecimal payPrice;
    private int payTime;
    private int confirmTime;
    private int deliveryTime;
    private int cancelTime;
    private int collectTime;
    private int closeTime;
    private int addTime;
    private int updTime;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "order_no", nullable = false, length = 100)
    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "shop_id", nullable = false)
    public int getShopId() {
        return shopId;
    }

    public void setShopId(int shopId) {
        this.shopId = shopId;
    }

    @Basic
    @Column(name = "receive_address_id", nullable = false)
    public int getReceiveAddressId() {
        return receiveAddressId;
    }

    public void setReceiveAddressId(int receiveAddressId) {
        this.receiveAddressId = receiveAddressId;
    }

    @Basic
    @Column(name = "receive_name", nullable = false, length = 50)
    public String getReceiveName() {
        return receiveName;
    }

    public void setReceiveName(String receiveName) {
        this.receiveName = receiveName;
    }

    @Basic
    @Column(name = "receive_tel", nullable = false, length = 15)
    public String getReceiveTel() {
        return receiveTel;
    }

    public void setReceiveTel(String receiveTel) {
        this.receiveTel = receiveTel;
    }

    @Basic
    @Column(name = "receive_province", nullable = false)
    public int getReceiveProvince() {
        return receiveProvince;
    }

    public void setReceiveProvince(int receiveProvince) {
        this.receiveProvince = receiveProvince;
    }

    @Basic
    @Column(name = "receive_city", nullable = false)
    public int getReceiveCity() {
        return receiveCity;
    }

    public void setReceiveCity(int receiveCity) {
        this.receiveCity = receiveCity;
    }

    @Basic
    @Column(name = "receive_county", nullable = false)
    public int getReceiveCounty() {
        return receiveCounty;
    }

    public void setReceiveCounty(int receiveCounty) {
        this.receiveCounty = receiveCounty;
    }

    @Basic
    @Column(name = "receive_address", nullable = false, length = 200)
    public String getReceiveAddress() {
        return receiveAddress;
    }

    public void setReceiveAddress(String receiveAddress) {
        this.receiveAddress = receiveAddress;
    }

    @Basic
    @Column(name = "user_note", nullable = false, length = 500)
    public String getUserNote() {
        return userNote;
    }

    public void setUserNote(String userNote) {
        this.userNote = userNote;
    }

    @Basic
    @Column(name = "express_id", nullable = false)
    public int getExpressId() {
        return expressId;
    }

    public void setExpressId(int expressId) {
        this.expressId = expressId;
    }

    @Basic
    @Column(name = "express_number", nullable = false, length = 60)
    public String getExpressNumber() {
        return expressNumber;
    }

    public void setExpressNumber(String expressNumber) {
        this.expressNumber = expressNumber;
    }

    @Basic
    @Column(name = "payment_id", nullable = false)
    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
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
    @Column(name = "pay_status", nullable = false)
    public byte getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(byte payStatus) {
        this.payStatus = payStatus;
    }

    @Basic
    @Column(name = "preferential_price", nullable = false, precision = 2)
    public BigDecimal getPreferentialPrice() {
        return preferentialPrice;
    }

    public void setPreferentialPrice(BigDecimal preferentialPrice) {
        this.preferentialPrice = preferentialPrice;
    }

    @Basic
    @Column(name = "price", nullable = false, precision = 2)
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "total_price", nullable = false, precision = 2)
    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Basic
    @Column(name = "pay_price", nullable = false, precision = 2)
    public BigDecimal getPayPrice() {
        return payPrice;
    }

    public void setPayPrice(BigDecimal payPrice) {
        this.payPrice = payPrice;
    }

    @Basic
    @Column(name = "pay_time", nullable = false)
    public int getPayTime() {
        return payTime;
    }

    public void setPayTime(int payTime) {
        this.payTime = payTime;
    }

    @Basic
    @Column(name = "confirm_time", nullable = false)
    public int getConfirmTime() {
        return confirmTime;
    }

    public void setConfirmTime(int confirmTime) {
        this.confirmTime = confirmTime;
    }

    @Basic
    @Column(name = "delivery_time", nullable = false)
    public int getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(int deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    @Basic
    @Column(name = "cancel_time", nullable = false)
    public int getCancelTime() {
        return cancelTime;
    }

    public void setCancelTime(int cancelTime) {
        this.cancelTime = cancelTime;
    }

    @Basic
    @Column(name = "collect_time", nullable = false)
    public int getCollectTime() {
        return collectTime;
    }

    public void setCollectTime(int collectTime) {
        this.collectTime = collectTime;
    }

    @Basic
    @Column(name = "close_time", nullable = false)
    public int getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(int closeTime) {
        this.closeTime = closeTime;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LOrderEntity that = (LOrderEntity) o;
        return id == that.id &&
                userId == that.userId &&
                shopId == that.shopId &&
                receiveAddressId == that.receiveAddressId &&
                receiveProvince == that.receiveProvince &&
                receiveCity == that.receiveCity &&
                receiveCounty == that.receiveCounty &&
                expressId == that.expressId &&
                paymentId == that.paymentId &&
                status == that.status &&
                payStatus == that.payStatus &&
                payTime == that.payTime &&
                confirmTime == that.confirmTime &&
                deliveryTime == that.deliveryTime &&
                cancelTime == that.cancelTime &&
                collectTime == that.collectTime &&
                closeTime == that.closeTime &&
                addTime == that.addTime &&
                updTime == that.updTime &&
                Objects.equals(orderNo, that.orderNo) &&
                Objects.equals(receiveName, that.receiveName) &&
                Objects.equals(receiveTel, that.receiveTel) &&
                Objects.equals(receiveAddress, that.receiveAddress) &&
                Objects.equals(userNote, that.userNote) &&
                Objects.equals(expressNumber, that.expressNumber) &&
                Objects.equals(preferentialPrice, that.preferentialPrice) &&
                Objects.equals(price, that.price) &&
                Objects.equals(totalPrice, that.totalPrice) &&
                Objects.equals(payPrice, that.payPrice);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, orderNo, userId, shopId, receiveAddressId, receiveName, receiveTel, receiveProvince, receiveCity, receiveCounty, receiveAddress, userNote, expressId, expressNumber, paymentId, status, payStatus, preferentialPrice, price, totalPrice, payPrice, payTime, confirmTime, deliveryTime, cancelTime, collectTime, closeTime, addTime, updTime);
    }
}
