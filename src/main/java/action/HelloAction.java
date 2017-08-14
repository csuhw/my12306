package action;


/**
 * Created by Administrator on 2016/9/18.
 */
public class HelloAction {
    public final static String MESSAGE = "hello!!!";
    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String execute() throws Exception {
        setMessage(MESSAGE);
        return "success";
    }
}
