/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.DAO;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import by.telecom.subscriberapp.User;
import by.telecom.subscriberapp.HibernateUtil;
import org.hibernate.criterion.Order;

/**
 *
 * @author ASUP8
 */
public class UserDaoImpl implements UserDao{
    
    private GenericDaoImpl<User, Long> genDaoImpl = new GenericDaoImpl<User, Long>();
    
    @Override
    public Long create(User newInstance) {
        return genDaoImpl.create(newInstance);
    }

    @Override
    public User read(Long id) {
        return genDaoImpl.read(User.class, id);
    }

    @Override
    public void update(User transientObject) {
        genDaoImpl.update(transientObject);
    }

    @Override
    public void delete(User persistentObject) {
        genDaoImpl.delete(persistentObject);
    }

    @Override
    public List<User> getAll(String sort, String orderType) {
        return genDaoImpl.getAll(User.class, sort, orderType);
    }

    @Override
    public List<User> getByLogin(String login) {
        Session session = null;
        List<User> all = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            all = session.createCriteria(User.class)
                    .add(Restrictions.like("login", "%"+login+"%")).list();
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

    @Override
    public List<User> getByParameter(String login, String name, Integer category, String sort, String orderType) {
        Session session = null;
        List<User> all = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Order order = Order.asc(sort);
            if(orderType.equals("desc"))
                order = Order.desc(sort);
            all = session.createCriteria(User.class)
                    .add(Restrictions.like("login", "%"+login+"%"))
                    .add(Restrictions.like("name", "%"+name+"%"))
                    .add(Restrictions.ge("category", category))
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
