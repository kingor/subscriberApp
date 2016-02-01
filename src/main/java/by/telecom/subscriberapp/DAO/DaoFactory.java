/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import net.sf.cglib.proxy.Factory;
import org.hibernate.Session;

/**
 *
 * @author ASUP8
 */
public class DaoFactory {
    
    private static DaoFactory instance = null;
    private static SubscriberDao subscriberDao = null;
    private static PhoneDao phoneDao = null;
    private static UserDao userDao = null;
    private static LogDao logDao = null;
    
    public static synchronized DaoFactory getInstance() {
        if (instance == null) {
            instance = new DaoFactory();
        }
        return instance;
    }
    
    public static synchronized SubscriberDao getSubscriberDao() {
        if (subscriberDao == null) {
            subscriberDao = new SubscriberDaoImpl();
        }
        return subscriberDao;
    }
    
    public static synchronized PhoneDao getPhoneDao() {
        if (phoneDao == null) {
            phoneDao = new PhoneDaoImpl();
        }
        return phoneDao;
    }
    
    public static synchronized UserDao getUserDao() {
        if (userDao == null) {
            userDao = new UserDaoImpl();
        }
        return userDao;
    }
    
    public static synchronized LogDao getLogDao() {
        if (logDao == null) {
            logDao = new LogDaoImpl();
        }
        return logDao;
    }
   
}
