/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package by.telecom.subscriberapp.DAO;

import by.telecom.subscriberapp.Log;
import java.util.List;
import by.telecom.subscriberapp.User;
import by.telecom.subscriberapp.Phone;
import java.util.Date;

/**
 *
 * @author ASUP8
 */
public interface LogDao extends GenericDao<Log, Long> {
    public List<Log> getByParameter(String name, Date dateStart, Date dateEnd, String type,
            String comment, String sort, String orderType);
}
