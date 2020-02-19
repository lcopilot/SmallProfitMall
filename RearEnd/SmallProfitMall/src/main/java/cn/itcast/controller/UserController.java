package cn.itcast.controller;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 帐户web
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService accountService;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("表现层：查询所有账户...");
        // 调用service的方法
        List<User> list = accountService.findAll();
        System.out.println(list);
        model.addAttribute("list",list);
        return "list";
    }
    /**
     * 保存
     * @return
     */
    @RequestMapping("/save")
    public void save(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
        accountService.saveAccount(user);
        System.out.println(user.getName());
        response.sendRedirect(request.getContextPath()+"/user/findAll");
        return;
    }

}
