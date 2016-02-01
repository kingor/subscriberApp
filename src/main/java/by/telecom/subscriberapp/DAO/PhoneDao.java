/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package by.telecom.subscriberapp.DAO;

import java.util.List;
import by.telecom.subscriberapp.Subscriber;
import by.telecom.subscriberapp.Phone;

/**
 *
 * @author ASUP8
 */
public interface PhoneDao extends GenericDao<Phone, Long> {
    public List<Phone> getBySubscriber(Subscriber subscriber);
    public List<Phone> getByParameter(String number, String band, 
            String security, String scv, String adsl, String name, String sort, String orderType);
}
