package com.power.dbc.Controller.EnterpriseInfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @program: LiXingShopSystem
 * @description:
 * @author: DBC
 * @create: 2019-08-08 17:12
 **/
@Controller
public class SummaryController {
    @RequestMapping(method = RequestMethod.GET, value = "EnterpriseInfo/Summary")
    public String summary(ModelMap modelMap){
        System.out.println(System.currentTimeMillis());
        return "enterpriseInfo/summary";
    }
}
