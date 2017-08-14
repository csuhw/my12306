package Dao;

import domain.Plan;

import java.util.List;


public interface PlanDao {
    void addPlan(Plan plan);

    void deletePlanById(int id);

    void updatePlan(Plan plan);

    List<Plan> selectPlanByTrain_id(String train_id);
}
