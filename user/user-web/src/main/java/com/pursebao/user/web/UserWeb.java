package com.pursebao.user.web;
import com.pursebao.user.pojo.vo.UserCustomer;
import com.pursebao.user.service.IUserService;
import com.pursebao.commons.pojo.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class UserWeb {

    @Autowired
    private IUserService iUserService;

    //转发器,直接登录到首页
    @RequestMapping(value="/index.do")
    public String index(){
        return "index";
    }

    //转发器,直接跳转到登录页面
    @RequestMapping(value="/login.do")
    public String userLogin(){

        return "user/login";
    }

    //转发器,直接跳转到注册页面
    @RequestMapping(value = "/register.do")
    public String userRegister(){

        return "user/register";
    }

    //转发器,直接跳转到注册成功页面
    @RequestMapping(value = "/regSuccess.do")
    public String regSuccess(){

        return "user/regSuccess";
    }

    //转发器,直接跳转到修改密码页面
    @RequestMapping(value = "/findPassword.do")
    public String findPassword(){
        return "user/findPassword";
    }

    //转发器,直接跳转到密码修改成功页面
    @RequestMapping(value = "/resetPwdSuccess.do")
    public String resetPwdSuccess(){
        return "user/resetPwdSuccess";
    }


    //转发器,直接进入编辑个人信息页面
    @RequestMapping(value = "/edPerInformation.do")
    public String perInformation(){
        return "account/edPerInformation";
    }


    //转发器,直接进入修改登录密码页面 SetLoginPwd.jsp
    @RequestMapping(value = "/setLoginPwd.do")
    public String setLoginPwd(){
        return "user/setLoginPwd";
    }


    //转发器,直接进入修改支付密码页面 setPayPwd.jsp
    @RequestMapping(value = "/setPayPwd.do")
    public String setPayPwd(){

        return "user/setPayPwd";
    }



    //用户信息编辑完后,进入用户个人信息页面 perInformation.jsp
    @RequestMapping(value = "/updatePerInformation.do")
    public String updatePerInformation(UserCustomer userCustomer,HttpSession session){

        System.out.println(userCustomer.getUid()+userCustomer.getUsername()+
                userCustomer.getRealname()+userCustomer.getIdCard()+
                userCustomer.getEmail());

        iUserService.updatePerInformation(userCustomer);

        String uid = userCustomer.getUid();
        UserCustomer selectUser = iUserService.selectUserCustomerById(uid);
        session.setAttribute("sessionUserAccount",selectUser);

        System.out.println("3333333333333333333333333333");

        return "account/perInformation";
    }



    //用户登录,用户名和密码验证
    @RequestMapping(value = "/chekLogin.do",produces = "plain/text")
    @ResponseBody
    public String chekLogin(User user, HttpSession session) {

        if(user.getPhone()!=null){
            User userByPhone = iUserService.selectByPhone(user);

            //判断数据库是否有该用户名
            if(userByPhone==null){
                //用户名不存在,登录失败
                return "0";
            }else{
              //用户名正确，比较密码
                if(user.getPassword().equals(userByPhone.getPassword())){
                    //密码正确,允许登录
                    String uid = userByPhone.getUid();
                    UserCustomer selectUser = iUserService.selectUserById(uid);
                    session.setAttribute("sessionUserAccount",selectUser);
                    return "1";
                }else{
                    //密码错误,登录失败
                    return "0";
                }
            }
        }else{
            //用户名为空,不能登录
            return "0";
            }
    }


    //用户注册
    @RequestMapping(value = "/userReg.do")
    public String userReg(User user){
        iUserService.insertUser(user);
        return "redirect:/user/regSuccess.do";
    }


    //修改登录密码
    @RequestMapping(value = "/updateLoginPassword.do")
    public String updateLoginPassword(@RequestParam("newpassword") String password,@RequestParam("uid") String uid){
        UserCustomer userCustomer = new UserCustomer();
        userCustomer.setUid(uid);
        userCustomer.setPassword(password);
        System.out.println("ffffffffffffffffffff"+userCustomer.getUid()+userCustomer.getPassword());
        iUserService.updateLoginPassword(userCustomer);

        return "redirect:/user/resetPwdSuccess.do";
    }


    //修改支付密码
    @RequestMapping(value = "/updatePayPassword.do")
    public String updatePayPassword(){



        return "redirect:/user/resetPwdSuccess.do";
    }




    //注册时用户名失去焦点验证
    @RequestMapping(value = "/chekUsername.do")
    @ResponseBody
    public String checkReg(User user){

        if((user.getPhone())!=null&&!"".equals(user.getPhone())){
            /*User selectUser = iUserService.selectByName(user);*/
            User selectUser = iUserService.selectByPhone(user);
            if(selectUser!=null){
                //用户名已存在
                return "0";
            }else{
                //用户名不存在
                return "1";
            }
        }
        return "1";
    }


    //修改登录密码时验证登录密码是否填写正确
    @RequestMapping(value = "/checkPassword.do")
    @ResponseBody
    public String checkPassword(@RequestParam("oldpassword") String password,@RequestParam("uid") String uid){
         System.out.println("1111111111111111111"+"原密码="+password+","+"id="+uid);
        if(password!=null&&!"".equals(password)){
            UserCustomer userCustomer = iUserService.selectUserCustomerById(uid);
            System.out.println("2222222222222222222222");
            if(userCustomer!=null){
                if(password.equals(userCustomer.getPassword())){
                    //密码输入正确
                    return "1";
                }else {
                    //密码输入错误
                    return "0";
                }
            }
        }
        return "1";
    }

}
