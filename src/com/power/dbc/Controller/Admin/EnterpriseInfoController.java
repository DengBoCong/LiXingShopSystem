package com.power.dbc.Controller.Admin;

import com.power.dbc.Model.LAdminEntity;
import com.power.dbc.Service.AdminService;
import com.power.dbc.Service.GoodsService;
import com.power.dbc.Service.OrderService;
import com.power.dbc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-08 17:12
 **/
@Controller
@RequestMapping("/Admin/EnterpriseInfo")
public class EnterpriseInfoController {
    @Qualifier("orderService")
    @Autowired
    private OrderService orderService;

    @Qualifier("userService")
    @Autowired
    private UserService userService;

    @Qualifier("goodsService")
    @Autowired
    private GoodsService goodsService;

    @Qualifier("adminService")
    @Autowired
    private AdminService adminService;

    @RequestMapping(method = RequestMethod.GET, value = "/Summary")
    public String summary(ModelMap modelMap){
        /*LUserEntity lUserEntity = new LUserEntity();*/
        /*System.out.println(lUserEntity.getAlipayOpenid());
        System.out.println(lUserEntity.getIntegral());*/
        /*lUserEntity.setMobile("12102126701");
        lUserEntity.setAddTime(DateUtil.NowTime());
        lUserEntity.setOrderCount(16);
        lUserEntity.setSellCount(BigDecimal.valueOf(16006.66));
        lUserEntity.setProvince("江西");
        lUserEntity.setCity("南昌");
        lUserEntity.setAvatar("http://localhost:8080/img/user/avatar-1.jpg");
        lUserEntity.setUsername("丽星家居");
        lUserEntity.setAddress("江西省南昌市青山湖区");
        lUserEntity.setRoleId(0);
        userService.addUser(lUserEntity);*/
        /*LGoodsEntity lGoodsEntity = EntityInitUtil.InitLGoodsEntity();
        lGoodsEntity.setTitle("桌子");
        lGoodsEntity.setInventoryUnit("匹");
        lGoodsEntity.setContent("这是我们商品的详情");
        lGoodsEntity.setSalesCount(166);
        goodsService.addGoods(lGoodsEntity);*/
        modelMap.addAttribute("Top3Count", orderService.listST3Count());
        modelMap.addAttribute("RightUserCount", userService.listUKCount());
        modelMap.addAttribute("Top10SellUserList", userService.listTop10List(0));
        modelMap.addAttribute("Top3GoodsList", goodsService.listTop3SaleCount());
        return "admin/enterpriseInfo/summary";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/Details/{AdminId}")
    public String detail(ModelMap modelMap, @PathVariable int AdminId){
        modelMap.addAttribute("UserInfo", adminService.listById(AdminId));
        return "admin/enterpriseInfo/details";
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }
}
