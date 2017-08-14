package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import domain.Train;
import service.TrainService;

import java.util.Map;

/**
 * Created by Administrator on 2016/9/19.
 */
public class TrainAction extends ActionSupport {
    public String trainId;
    ActionContext actionContext = ActionContext.getContext();
    Map<String, Object> session = actionContext.getSession();
    private Train train;
    private TrainService trainService;

    public TrainAction() {
        trainService = new TrainService();
    }

    public String execute() throws Exception {
        return "success";
    }

    public String selectTrain() throws Exception {
        train = trainService.selectTrain(trainId);
        System.out.println(trainId);
        System.out.println(train.getTrain_style());
        //session.put("train",train);
        return SUCCESS;
    }

    public String addTrain() throws Exception {
        boolean result = trainService.addTrain(train);
        if (result) {
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String updateTrain() throws Exception {
        boolean result = trainService.updateTrain(train);
        if (result) {
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    public String deleteTrain() throws Exception {
        System.out.println(trainId);
        boolean result = trainService.deleteTrain(trainId);
        if (result) {
            return SUCCESS;
        } else {
            return INPUT;
        }
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

    public Train getTrain() {
        return train;
    }

    public void setTrain(Train train) {
        this.train = train;
    }

    public TrainService getTrainService() {
        return trainService;
    }

    public void setTrainService(TrainService trainService) {
        this.trainService = trainService;
    }

    public String getTrainId() {
        return trainId;
    }

    public void setTrainId(String trainId) {
        this.trainId = trainId;
    }


}
