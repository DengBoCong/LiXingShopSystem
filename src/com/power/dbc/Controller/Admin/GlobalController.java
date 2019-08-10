package com.power.dbc.Controller.Admin;

import com.power.dbc.Service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(method = RequestMethod.GET, value = "/Goods/{goodsId}")
    public String goodsDetail(ModelMap modelMap, @PathVariable int goodsId){
        modelMap.addAttribute("GoodsEntity", goodsService.listById(goodsId));
        return "admin/detail/goods-detail";
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }
}
