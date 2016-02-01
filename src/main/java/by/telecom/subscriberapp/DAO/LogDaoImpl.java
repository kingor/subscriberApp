/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package by.telecom.subscriberapp.DAO;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import by.telecom.subscriberapp.HibernateUtil;
import by.telecom.subscriberapp.Log;
import by.telecom.subscriberapp.User;
import by.telecom.subscriberapp.Phone;
import java.util.Date;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;

/**
 *
 * @author ASUP8
 */
public class LogDaoImpl implements LogDao {

    private GenericDaoImpl<Log, Long> genDaoImpl = new GenericDaoImpl<Log, Long>();
    
    @Override
    public Long create(Log newInstance) {
        return genDaoImpl.create(newInstance);
    }

    @Override
    public Log read(Long id) {
        return genDaoImpl.read(Log.class, id);
    }

    @Override
    public void update(Log transientObject) {
        genDaoImpl.update(transientObject);
    }

    @Override
    public void delete(Log persistentObject) {
        genDaoImpl.delete(persistentObject);
    }

    @Override
    public List<Log> getAll(String sort, String orderType) {
        return genDaoImpl.getAll(Log.class, sort, orderType);
    }

    @Override
    public List<Log> getByParameter(String name, Date dateStart, Date dateEnd, String type,
            String comment, String sort, String orderType) {
        Session session = null;
        List<Log> logs = new ArrayList<Log>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
             Criteria criteria = session.createCriteria(Log.class)
                    .add(Restrictions.ge("date", dateStart))
                    .add(Restrictions.le("date", dateEnd))
                    .add(Restrictions.like("type", "%"+type+"%"))
                    .add(Restrictions.like("comment", "%"+comment+"%"));
             Order order = Order.asc(sort);
             if(orderType.equals("desc"))
                order = Order.desc(sort);
             if (sort.equals("name"))
                criteria = criteria.createCriteria("user")
                        .add(Restrictions.like("name","%"+name+"%"))
                        .addOrder(order);
             else 
                criteria = criteria.addOrder(order)
                        .createCriteria("user")
                        .add(Restrictions.like("name","%"+name+"%"));
                        
            logs = criteria.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return logs;
    }


}
