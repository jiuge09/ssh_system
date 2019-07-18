package com.bdqn.bbh.controller;


import com.bdqn.bbh.entity.User;
import com.bdqn.bbh.mapper.UserMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {


    @Resource
    private UserMapper userMapper;


    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }


    /**
     * 登录操作
     * @param request
     * @param user
     * @return
     */
    @RequestMapping("/login")
    public String login(HttpServletRequest request,
                        Model model,
                        User user){
        if((user=userMapper.selectByNamePass(user))!=null){
            request.getSession().setAttribute("user",user);
            model.addAttribute("user",user);
            return "welcome";
        }else {
            return "login";
        }
    }


    /**
     * 退出系统
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String login(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "login";
    }


}
