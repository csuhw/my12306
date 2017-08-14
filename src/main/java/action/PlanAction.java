package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.Plan;
import service.PlanService;

import java.util.List;

/**
 * Created by Administrator on 2016/9/21.
 */
public class PlanAction extends ActionSupport {
    public String train_id;
    public List<Plan> planList;
    private Plan plan;
    private PlanService planService;

    public String selectPlanByTrain_id() {
        planService = new PlanService();
        planList = planService.selectPlanByTrain_id(train_id);
        return SUCCESS;
    }


    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public PlanService getPlanService() {
        return planService;
    }

    public void setPlanService(PlanService planService) {
        this.planService = planService;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public List<Plan> getPlanList() {
        return planList;
    }

    public void setPlanList(List<Plan> planList) {
        this.planList = planList;
    }
}
