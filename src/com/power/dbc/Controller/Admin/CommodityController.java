package com.power.dbc.Controller.Admin;

import com.power.dbc.Service.GoodsService;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-11 10:10
 **/
@Controller
@RequestMapping("/Admin/Commodity")
public class CommodityController {
    @Qualifier("goodsService")
    @Autowired
    private GoodsService goodsService;

    @RequestMapping(method = RequestMethod.GET, value = "/Record")
    public String record(ModelMap modelMap){
        return "admin/commodity/record";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/AllGoods")
    @ResponseBody
    public Map<String, Object> allGoodsList(HttpServletRequest httpServletRequest,
                                            HttpServletResponse httpServletResponse,ModelMap modelMap){
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("data", goodsService.list());
        return result;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }
}
