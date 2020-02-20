package cn.itcast.controller;

import cn.itcast.domain.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 帐户web
 */
@Controller
@RequestMapping("/user")
@ResponseBody
public class UserController {

    @Autowired
    private UserService accountService;

    @RequestMapping("/findAll")
    public QueryResponseResult findAll(){
        System.out.println("表现层：查询所有账户...");
        // 调用service的方法
        List<User> list = accountService.findAll();
        QueryResult<User> result = new QueryResult<>();
        result.setList(list);
        return new QueryResponseResult(CommonCode.SUCCESS,result);
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
