/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.Controller;

import com.romy.AddMe.Service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author romy
 */
@Controller
public class ClassroomController {
        
//    ------------------------Classroom-----------------------------
    @Autowired
    StudentService studentService;
    
    
      @RequestMapping(value="/displayclassroom",method=RequestMethod.GET)
  public String displayclassroom(Model model){
         model.addAttribute("classroomdata", studentService.select());
        return "backend/DisplayClassroom";
    }
}
