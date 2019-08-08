package com.power.dbc.Controller;

import com.power.dbc.Model.LAdminEntity;
import com.power.dbc.Service.AdminService;
import com.power.dbc.Utils.ReflectUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
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
 * @create: 2019-08-07 16:03
 **/
@Controller
public class authSigninController {
    @Autowired
    private AdminService adminService;

    @RequestMapping(method = RequestMethod.GET, value = "/Login")
    public String login(ModelMap modelMap){
        return "auth-signin";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/PasswordReset")
    public String passwordRest(ModelMap modelMap){
        return "auth-reset-password";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/LoginCheck")
    @ResponseBody
    public Map<String, Object> loginCheck(String mobile, String password,
                                          HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,Model model){
        Map<String, Object> result = new HashMap<String, Object>();
        List<LAdminEntity> lAdminEntity = adminService.listByMobile(mobile);
        if(lAdminEntity.isEmpty()) result.put("flag", "0");
        else{
            if(DigestUtils.md5DigestAsHex(password.getBytes()).equals(lAdminEntity.get(0).getPassword())){
                result = ReflectUtil.toMap(lAdminEntity);
                result.put("flag", "1");
            }else{
                result.put("flag", "-1");
            }
        }
        return result;
    }
}
