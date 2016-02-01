/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.DAO;

import java.util.Collection;
import by.telecom.subscriberapp.Subscriber;

/**
 *
 * @author ASUP8
 */
public interface SubscriberDao  extends GenericDao<Subscriber, Long>{
    Collection<Subscriber> getByParameter(String name, String address, String comment, String sort, String orderType);
}
