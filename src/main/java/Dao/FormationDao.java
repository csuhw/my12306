package Dao;

import domain.Formation;

import java.util.List;


public interface FormationDao {
    void addFormation(Formation formation);

    void deleteFormationById(int id);

    void updateFormation(Formation formation);

    List<Formation> selectFormation(String id);

}
