package com.power.dbc.Model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-10 17:25
 **/
@Entity
@Table(name = "l_admin", schema = "lixing", catalog = "")
public class LAdminEntity {
    private String username;
    private String password;
    private int id;
    private int loginTotal;
    private int loginTime;
    private int roleId;
    private byte gender;
    private String mobile;
    private int addTime;
    private int updTime;
    private String image;
    private String email;

    @Basic
    @Column(name = "username", nullable = false, length = 50)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 100)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "login_total", nullable = false)
    public int getLoginTotal() {
        return loginTotal;
    }

    public void setLoginTotal(int loginTotal) {
        this.loginTotal = loginTotal;
    }

    @Basic
    @Column(name = "login_time", nullable = false)
    public int getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(int loginTime) {
        this.loginTime = loginTime;
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
    @Column(name = "gender", nullable = false)
    public byte getGender() {
        return gender;
    }

    public void setGender(byte gender) {
        this.gender = gender;
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
    @Column(name = "image", nullable = false, length = 1000)
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 30)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LAdminEntity that = (LAdminEntity) o;
        return id == that.id &&
                loginTotal == that.loginTotal &&
                loginTime == that.loginTime &&
                roleId == that.roleId &&
                gender == that.gender &&
                addTime == that.addTime &&
                updTime == that.updTime &&
                Objects.equals(username, that.username) &&
                Objects.equals(password, that.password) &&
                Objects.equals(mobile, that.mobile) &&
                Objects.equals(image, that.image) &&
                Objects.equals(email, that.email);
    }

    @Override
    public int hashCode() {

        return Objects.hash(username, password, id, loginTotal, loginTime, roleId, gender, mobile, addTime, updTime, image, email);
    }
}
