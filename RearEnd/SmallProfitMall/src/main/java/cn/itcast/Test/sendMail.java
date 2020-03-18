//package cn.itcast.Test;
//
//public class sendMail {
//    /**
//     * 发送邮件代码
//     * @param email 收件人邮箱
//     */
//    public static int sendAuthCodeEmail(String email, HttpServletRequest request) {
//        String vcode = "adasdas";
//        try {
//            SimpleEmail mail = new SimpleEmail();
//            mail.setHostName("smtp.163.com");// 发送邮件的服务器
//            mail.setAuthentication("liliu_muge@163.com","UMIWCAGUPZSIGZNQ");// 刚刚记录的授权码，是开启SMTP的密码
//            mail.setFrom("liliu_muge@163.com", "asd"); // 发送邮件的邮箱和发件人
//            // mail.setSSLOnConnect(true); // 使用安全链接
//            mail.addTo(email);// 接收的邮箱
//            mail.setSubject("微利：");// 设置邮件的主题
//            // mail.setMsg();// 设置邮件的内容
//            String emailMsg = "注册验证码：" + vcode;
//            mail.setContent(emailMsg, "textml;charset=UTF-8");
//            String send = mail.send();// 发送
//            System.err.println("已发送" + send);
//					//ssion存储邮箱验证码
//            request.getSession().setAttribute("vcode", vcode);
//        } catch (Exception e) {
//            return -1;
//        }
//        return 1;
//    }
//    @Test
//    public void  s( HttpServletRequest request){
//        sendMail.sendAuthCodeEmail("2252821162@qq.com", request);
//    }
//}
