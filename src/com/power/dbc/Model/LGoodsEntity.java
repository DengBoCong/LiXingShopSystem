package com.power.dbc.Model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-09 20:48
 **/
@Entity
@Table(name = "l_goods", schema = "lixing", catalog = "")
public class LGoodsEntity {
    private int id;
    private int brandId;
    private String title;
    private String titleColor;
    private int parameterId;
    private int factoryOrigin;
    private int inventory;
    private String inventoryUnit;
    private String images;
    private BigDecimal originalPrice;
    private BigDecimal factoryPrice;
    private BigDecimal guidePrice;
    private int buyMinNumber;
    private int buyMaxNumber;
    private byte isDeductionInventory;
    private byte isShelves;
    private byte isHomeRecommended;
    private String content;
    private byte photoCount;
    private int salesCount;
    private int accessCount;
    private String video;
    private String homeRecommendedImages;
    private int addTime;
    private int updTime;
    private String afterSalesInstruction;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "brand_id", nullable = false)
    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    @Basic
    @Column(name = "title", nullable = false, length = 60)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "title_color", nullable = false, length = 10)
    public String getTitleColor() {
        return titleColor;
    }

    public void setTitleColor(String titleColor) {
        this.titleColor = titleColor;
    }

    @Basic
    @Column(name = "parameter_id", nullable = false)
    public int getParameterId() {
        return parameterId;
    }

    public void setParameterId(int parameterId) {
        this.parameterId = parameterId;
    }

    @Basic
    @Column(name = "factory_origin", nullable = false)
    public int getFactoryOrigin() {
        return factoryOrigin;
    }

    public void setFactoryOrigin(int factoryOrigin) {
        this.factoryOrigin = factoryOrigin;
    }

    @Basic
    @Column(name = "inventory", nullable = false)
    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    @Basic
    @Column(name = "inventory_unit", nullable = false, length = 15)
    public String getInventoryUnit() {
        return inventoryUnit;
    }

    public void setInventoryUnit(String inventoryUnit) {
        this.inventoryUnit = inventoryUnit;
    }

    @Basic
    @Column(name = "images", nullable = false, length = 1000)
    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    @Basic
    @Column(name = "original_price", nullable = false, precision = 2)
    public BigDecimal getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(BigDecimal originalPrice) {
        this.originalPrice = originalPrice;
    }

    @Basic
    @Column(name = "factory_price", nullable = false, precision = 2)
    public BigDecimal getFactoryPrice() {
        return factoryPrice;
    }

    public void setFactoryPrice(BigDecimal factoryPrice) {
        this.factoryPrice = factoryPrice;
    }

    @Basic
    @Column(name = "guide_price", nullable = false, precision = 2)
    public BigDecimal getGuidePrice() {
        return guidePrice;
    }

    public void setGuidePrice(BigDecimal guidePrice) {
        this.guidePrice = guidePrice;
    }

    @Basic
    @Column(name = "buy_min_number", nullable = false)
    public int getBuyMinNumber() {
        return buyMinNumber;
    }

    public void setBuyMinNumber(int buyMinNumber) {
        this.buyMinNumber = buyMinNumber;
    }

    @Basic
    @Column(name = "buy_max_number", nullable = false)
    public int getBuyMaxNumber() {
        return buyMaxNumber;
    }

    public void setBuyMaxNumber(int buyMaxNumber) {
        this.buyMaxNumber = buyMaxNumber;
    }

    @Basic
    @Column(name = "is_deduction_inventory", nullable = false)
    public byte getIsDeductionInventory() {
        return isDeductionInventory;
    }

    public void setIsDeductionInventory(byte isDeductionInventory) {
        this.isDeductionInventory = isDeductionInventory;
    }

    @Basic
    @Column(name = "is_shelves", nullable = false)
    public byte getIsShelves() {
        return isShelves;
    }

    public void setIsShelves(byte isShelves) {
        this.isShelves = isShelves;
    }

    @Basic
    @Column(name = "is_home_recommended", nullable = false)
    public byte getIsHomeRecommended() {
        return isHomeRecommended;
    }

    public void setIsHomeRecommended(byte isHomeRecommended) {
        this.isHomeRecommended = isHomeRecommended;
    }

    @Basic
    @Column(name = "content", nullable = false, length = -1)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "photo_count", nullable = false)
    public byte getPhotoCount() {
        return photoCount;
    }

    public void setPhotoCount(byte photoCount) {
        this.photoCount = photoCount;
    }

    @Basic
    @Column(name = "sales_count", nullable = false)
    public int getSalesCount() {
        return salesCount;
    }

    public void setSalesCount(int salesCount) {
        this.salesCount = salesCount;
    }

    @Basic
    @Column(name = "access_count", nullable = false)
    public int getAccessCount() {
        return accessCount;
    }

    public void setAccessCount(int accessCount) {
        this.accessCount = accessCount;
    }

    @Basic
    @Column(name = "video", nullable = false, length = 1000)
    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    @Basic
    @Column(name = "home_recommended_images", nullable = false, length = 1000)
    public String getHomeRecommendedImages() {
        return homeRecommendedImages;
    }

    public void setHomeRecommendedImages(String homeRecommendedImages) {
        this.homeRecommendedImages = homeRecommendedImages;
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
    @Column(name = "after_sales_instruction", nullable = false, length = 1000)
    public String getAfterSalesInstruction() {
        return afterSalesInstruction;
    }

    public void setAfterSalesInstruction(String afterSalesInstruction) {
        this.afterSalesInstruction = afterSalesInstruction;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LGoodsEntity that = (LGoodsEntity) o;
        return id == that.id &&
                brandId == that.brandId &&
                parameterId == that.parameterId &&
                factoryOrigin == that.factoryOrigin &&
                inventory == that.inventory &&
                buyMinNumber == that.buyMinNumber &&
                buyMaxNumber == that.buyMaxNumber &&
                isDeductionInventory == that.isDeductionInventory &&
                isShelves == that.isShelves &&
                isHomeRecommended == that.isHomeRecommended &&
                photoCount == that.photoCount &&
                salesCount == that.salesCount &&
                accessCount == that.accessCount &&
                addTime == that.addTime &&
                updTime == that.updTime &&
                Objects.equals(title, that.title) &&
                Objects.equals(titleColor, that.titleColor) &&
                Objects.equals(inventoryUnit, that.inventoryUnit) &&
                Objects.equals(images, that.images) &&
                Objects.equals(originalPrice, that.originalPrice) &&
                Objects.equals(factoryPrice, that.factoryPrice) &&
                Objects.equals(guidePrice, that.guidePrice) &&
                Objects.equals(content, that.content) &&
                Objects.equals(video, that.video) &&
                Objects.equals(homeRecommendedImages, that.homeRecommendedImages) &&
                Objects.equals(afterSalesInstruction, that.afterSalesInstruction);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, brandId, title, titleColor, parameterId, factoryOrigin, inventory, inventoryUnit, images, originalPrice, factoryPrice, guidePrice, buyMinNumber, buyMaxNumber, isDeductionInventory, isShelves, isHomeRecommended, content, photoCount, salesCount, accessCount, video, homeRecommendedImages, addTime, updTime, afterSalesInstruction);
    }
}
