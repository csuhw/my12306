package service;

import Dao.PlanDao;
import Dao.impl.PlanDaoImpl;
import domain.Plan;

import java.util.List;

/**
 * Created by Administrator on 2016/9/21.
 */
public class PlanService {
    public PlanService planService;
    private PlanDao planDao;

    public List<Plan> selectPlanByTrain_id(String train_id) {
        planDao = new PlanDaoImpl();
        return planDao.selectPlanByTrain_id(train_id);
    }
}
