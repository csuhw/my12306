package service;

import Dao.FormationDao;
import Dao.impl.FormationDaoImpl;
import domain.Formation;

import java.util.List;

/**
 * Created by Administrator on 2016/9/20.
 */
public class FormationService {
    private FormationDao formationDao;

    public List<Formation> selectFormation(String train_id) {
        formationDao = new FormationDaoImpl();
        return formationDao.selectFormation(train_id);
    }
}
