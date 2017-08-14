package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import domain.User;
import service.LoginService;

import java.util.Map;

/**
 * Created by Administrator on 2016/9/21.
 */
public class UserAction extends ActionSupport {
    ActionContext actionContext = ActionContext.getContext();
    Map<String, Object> session = actionContext.getSession();
    LoginService loginService;
    private User user;

    public String getUserByNameAndPwd() {
        loginService = new LoginService();
        if (true) {
            //user=new User();
            System.out.println(user.getPassword());
            System.out.println("11111");
            user = loginService.LoginByNameAndPwd(user.getUsername(), user.getPassword());
            System.out.println(user.getUsername());
            // session.put("user0",user);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public LoginService getLoginService() {
        return loginService;
    }

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    public ActionContext getActionContext() {
        return actionContext;
    }

    public void setActionContext(ActionContext actionContext) {
        this.actionContext = actionContext;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
}
