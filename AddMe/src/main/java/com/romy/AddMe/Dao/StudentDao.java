/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.Dao;

import com.romy.AddMe.Model.Classroom;
import com.romy.AddMe.Model.Student;
import java.util.List;

/**
 *
 * @author romy
 */
public interface StudentDao {
//    -------StudentDao---------
    void insert(Student student);
    List<Student> getAll();
    void delete (Student student);
    List<Student> getById(int studentid);
    void update(Student student);
    
    
//    ---------------------ClassroomDao------------------
    List<Classroom> select();
    void delete (Classroom classroom);
    List<Classroom> getClassroomById(int classroomid);
    void update(Classroom classroom);
    
    
    
    
}
