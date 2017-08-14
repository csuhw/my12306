package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.Formation;
import service.FormationService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/9/20.
 */
public class FormationAction extends ActionSupport {

    public String train_id;
    public List<Formation> carriageList;
    private Formation fomation;
    private FormationService formationService;

    public String selectRouteByTId() throws Exception {
        formationService = new FormationService();
        carriageList = new ArrayList<Formation>();
        carriageList = formationService.selectFormation(train_id);
        return SUCCESS;

    }

    public Formation getFomation() {
        return fomation;
    }

    public void setFomation(Formation fomation) {
        this.fomation = fomation;
    }

    public FormationService getFormationService() {
        return formationService;
    }

    public void setFormationService(FormationService formationService) {
        this.formationService = formationService;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public List<Formation> getCarriageList() {
        return carriageList;
    }

    public void setCarriageList(List<Formation> carriageList) {
        this.carriageList = carriageList;
    }
}
