/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.DAO;

import java.util.Collection;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import by.telecom.subscriberapp.Subscriber;
import by.telecom.subscriberapp.HibernateUtil;
import org.hibernate.criterion.Order;

/**
 *
 * @author ASUP8
 */
public class SubscriberDaoImpl implements SubscriberDao{
    
    private GenericDaoImpl<Subscriber, Long> genDaoImpl = new GenericDaoImpl<>();
    
    @Override
    public Long create(Subscriber newInstance) {
        return genDaoImpl.create(newInstance);
    }

    @Override
    public Subscriber read(Long id) {
        return genDaoImpl.read(Subscriber.class, id);
    }

    @Override
    public void update(Subscriber transientObject) {
        genDaoImpl.update(transientObject);
    }

    @Override
    public void delete(Subscriber persistentObject) {
        genDaoImpl.delete(persistentObject);
    }

    @Override
    public List<Subscriber> getAll(String sort, String orderType) {
        return genDaoImpl.getAll(Subscriber.class, sort, orderType);
    }

    @Override
    public Collection<Subscriber> getByParameter(String name, String address, String comment, String sort, String orderType) {
        Session session = null;
        List<Subscriber> all = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Order order = Order.asc(sort);
            if(orderType.equals("desc"))
                order = Order.desc(sort);
            all = session.createCriteria(Subscriber.class)
                    .add( Restrictions.like("name", "%"+name+"%"))
                    .add( Restrictions.like("address", "%"+address+"%"))
                    .add( Restrictions.like("comment", "%"+comment+"%"))
                    .addOrder(order).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return all;
    }

   
}
