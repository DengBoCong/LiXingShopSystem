package com.power.dbc.Controller.Admin;

import com.power.dbc.Model.LAdminEntity;
import com.power.dbc.Service.AdminService;
import com.power.dbc.Service.GoodsService;
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
 * @create: 2019-08-09 22:59
 **/
@Controller
@RequestMapping("/Admin")
public class GlobalController {
    @Qualifier("goodsService")
    @Autowired
    private GoodsService goodsService;

    @Qualifier("adminService")
    @Autowired
    private AdminService adminService;

    @RequestMapping(method = RequestMethod.GET, value = "/Goods/{goodsId}")
    public String goodsDetail(ModelMap modelMap, @PathVariable int goodsId){
        modelMap.addAttribute("GoodsEntity", goodsService.listById(goodsId));
        return "admin/detail/goods-detail";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/ModifyPwd")
    @ResponseBody
    public Map<String, Object> modifyPwd(String id, String oldPwd, String newPwd,
                                         HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Model model){
        Map<String, Object> result = new HashMap<String, Object>();
        LAdminEntity lAdminEntityList = null;
        lAdminEntityList = adminService.listById(Integer.parseInt(id));
        if(lAdminEntityList == null) result.put("flag", "0");
        else{
            if(DigestUtils.md5DigestAsHex(oldPwd.getBytes()).equals(lAdminEntityList.getPassword())){
                LAdminEntity lAdminEntity = new LAdminEntity();
                lAdminEntity.setPassword(newPwd);
                lAdminEntity.setId(Integer.parseInt(id));
                if(adminService.updateAdmin(lAdminEntity)) result.put("flag", "1");
                else result.put("flag", "2");
            }else{
                result.put("flag", "-1");
            }
        }
        return result;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/ModifyInfo")
    @ResponseBody
    public Map<String, Object> modifyInfo(String id, String email, String username, String gender,
                                          HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Model model){
        System.out.println(email);
        System.out.println(username);
        System.out.println(gender);
        Map<String, Object> result = new HashMap<String, Object>();
        LAdminEntity lAdminEntityList = null;
        lAdminEntityList = adminService.listById(Integer.parseInt(id));
        if(lAdminEntityList == null) result.put("flag", "0");
        else{
            LAdminEntity lAdminEntity = new LAdminEntity();
            lAdminEntity.setId(Integer.parseInt(id));
            lAdminEntity.setEmail(email);
            lAdminEntity.setUsername(username);
            lAdminEntity.setGender((byte)Integer.parseInt(gender));
            if(adminService.updateAdmin(lAdminEntity)) result.put("flag", "1");
            else result.put("flag", "2");
        }
        return result;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }
}
