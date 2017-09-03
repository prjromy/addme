/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.Service;

import com.romy.AddMe.Model.Classroom;
import com.romy.AddMe.Model.Student;
import java.util.List;

/**
 *
 * @author romy
 */
public interface StudentService {
        void insert(Student student);
         List<Student> getAll();
    void delete (Student student);
    List<Student> getById(int studentid);
    public List<Student> update(Student c);
    
    
    
    
//    --------Classroom-----------------------
    
      List<Classroom> select();
    void delete (Classroom classroom);
    List<Classroom> getClassroomById(int classroomid);
    public List<Classroom> update(Classroom c);
}
