/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.ServiceImpl;

import com.romy.AddMe.Dao.StudentDao;
import com.romy.AddMe.Model.Classroom;
import com.romy.AddMe.Model.Student;
import com.romy.AddMe.Service.StudentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author romy
 */
@Service
@Transactional
public class StudentServiceImpl implements StudentService {
@Autowired
    StudentDao studentDao;
    
    @Override
    public void insert(Student student) {
                studentDao.insert(student);

    }

    @Override
    public List<Student> getAll() {
        return studentDao.getAll();
    }

    @Override
    public void delete(Student student) {
        studentDao.delete(student);
    }

    @Override
    public List<Student> getById(int studentid) {
      return  studentDao.getById(studentid);
    }

    @Override
  public List<Student> update(Student student){
 studentDao.update(student);
        return studentDao.getAll();
    }
  
  
  
//  ----------------Classroom-----------------------

    @Override
    public List<Classroom> select() {
        return studentDao.select();
    }

    @Override
    public void delete(Classroom classroom) {
        studentDao.delete(classroom);
    }

    @Override
    public List<Classroom> getClassroomById(int classroomid) {
      return  studentDao.getClassroomById(classroomid);
    }

    @Override
    public List<Classroom> update(Classroom c) {
        return studentDao.select();
    }
    
}
