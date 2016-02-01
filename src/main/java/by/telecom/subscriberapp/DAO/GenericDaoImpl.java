/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.DAO;

import by.telecom.subscriberapp.HibernateUtil;
import by.telecom.subscriberapp.Subscriber;
import java.io.Serializable;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author ASUP8
 * @param <T>
 * @param <PK>
 */
public class GenericDaoImpl<T, PK extends Serializable> {

    //@Override
    public Long create(T newInstance) {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.persist(newInstance);
            session.getTransaction().commit();
            return 1L;
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return 0L;
    }
    
    //@Override
    public T read(Class classT, Long id) {
        Session session = null;
        T objectT = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            objectT = (T) session.createCriteria(classT)
                    .add(Restrictions.eq("id", id)).uniqueResult();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return objectT;
    }

    //@Override
    public void update(T transientObject) {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(transientObject);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    //@Override
    public void delete(T persistentObject) {
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.delete(persistentObject);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }
    
    //@Override
    public List<T> getAll(Class classT, String sort, String orderType) {
        Session session = null;
        List<T> all = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Order order = Order.asc(sort);
            if(orderType.equals("desc"))
                order = Order.desc(sort);
            all = session.createCriteria(classT)
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
