package com.javarushtest.crudap.dao;

import com.javarushtest.crudap.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User successfully saved. User detail: "+ user);
    }

    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User successfully updated. User detail: "+ user);
    }

    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User)session.load(User.class, new Integer(id));

        if (user != null){
            session.delete(user);
            logger.info("User successfully removed. User detail: "+ user);
        }
    }

    @Override
    public User detUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User)session.load(User.class, new Integer(id));
        logger.info("User successfully loaded. User detail: "+ user);

        return user;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers() {
        Session session = sessionFactory.getCurrentSession();
        List<User> users = session.createQuery("from User").list();

        for (User user : users)
        logger.info("User list: " + user);

        return users;
    }
}
