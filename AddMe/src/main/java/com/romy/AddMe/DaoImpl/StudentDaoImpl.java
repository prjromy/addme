/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.DaoImpl;

import com.romy.AddMe.Dao.StudentDao;
import com.romy.AddMe.Model.Classroom;
import com.romy.AddMe.Model.Student;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author romy
 */
@Repository
public class StudentDaoImpl implements StudentDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void insert(Student student) {
        Session s = sessionFactory.openSession();
        s.save(student);
//     Session s= sessionFactory.openSession().save(student);

        s.beginTransaction().commit();
        s.close();
    }

    @Override
    public List<Student> getAll() {
        return sessionFactory.openSession().createCriteria(Student.class).list();
    }

    @Override
    public void delete(Student student) {
        Session s = sessionFactory.openSession();
        s.delete(student);
        s.beginTransaction().commit();
    }

    @Override
    public List<Student> getById(int studentid) {
        Session s = sessionFactory.openSession();

        return s.createCriteria(Student.class).add(Restrictions.eq("id", studentid)).list();
    }

    @Override
    public void update(Student student) {
        Session s = sessionFactory.openSession();
        s.update(student);
        s.beginTransaction().commit();
        s.close();

    }

//    ---------------Classroom------------------------------------
    @Override
    public List<Classroom> select() {
        return sessionFactory.openSession().createCriteria(Classroom.class).list();
    }

    @Override
    public void delete(Classroom classroom) {
        Session s = sessionFactory.openSession();
        s.delete(classroom);
        s.beginTransaction().commit();
    }

    @Override
    public List<Classroom> getClassroomById(int classroomid) {
        Session s = sessionFactory.openSession();

        return s.createCriteria(Classroom.class).add(Restrictions.eq("id", classroomid)).list();
    }

    @Override
    public void update(Classroom classroom) {
        Session s = sessionFactory.openSession();
        s.update(classroom);
        s.beginTransaction().commit();
        s.close();
    }

}
