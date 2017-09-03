/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.Controller;

import com.romy.AddMe.Model.Classroom;
import com.romy.AddMe.Model.Student;
import com.romy.AddMe.Service.StudentService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author romy
 */
@Controller
public class DashController {

    @Autowired
    StudentService studentService;
//------------------------Student---------------------------
    private static final String UPLOAD_DIRECTORY = "assets/frontend/images";

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView insert(@RequestParam("firstname") String firstname, @RequestParam("lastname") String lastname, @RequestParam("phonenumber") int phonenumber, @RequestParam("email") String email, @RequestParam("classroomname") String classroomname,@RequestParam("classroomteacher") String classroomteacher,@RequestParam("location") String location,@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws FileNotFoundException, IOException {
        String filePath = request.getServletContext().getRealPath("/") + "assets/frontend/images";        // file.transferTo(new File(filePath + File.separator+file.getOriginalFilename()));
        System.out.println(filePath);
        String filename = file.getOriginalFilename();
        filePath = filePath.replaceAll("\\\\", "/");

       System.out.println(filePath + "/" + filename);

        byte[] bytes = file.getBytes();
        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(
                new File(filePath + File.separator + filename)));
        stream.write(bytes);
        stream.flush();
        stream.close();
        String fullpath = UPLOAD_DIRECTORY + "/" + filename;
     
        
        Classroom classroom=new Classroom();
        classroom.setClassroomname(classroomname);
        classroom.setClassroomteacher(classroomteacher);
        classroom.setLocation(location);
        
        
        Student student=new Student();
        student.setFirstname(firstname);
        student.setLastname(lastname);
        student.setPhonenumber(phonenumber);
        student.setEmail(email);
        student.setPhoto(fullpath);
        student.setClassroom(classroom);
     
        studentService.insert(student);
           
        
       return new ModelAndView ("redirect:displaystudents");
    }
    @RequestMapping(value="/dashboard",method=RequestMethod.GET)
    
    public String dashboard(){
        
        return "backend/Insert";
    }
    @RequestMapping(value="/displaystudents",method=RequestMethod.GET)
    
    public String displaystudent(Model model){
         model.addAttribute("studentdata", studentService.getAll());
        return "backend/DisplayStudent";
    }
    
    
//      @RequestMapping(value="/admin/student/delete/{studentService}" ,method=RequestMethod.GET)
//    public String deleteStudent(@PathVariable ("studentid") int studentid ,Model model){
//        Student c=new Student();
//        c.setStudentid(studentid);
//        studentService.delete(c);
//        model.addAttribute("studentdata", studentService.getAll());
//        return "backend/DisplayStudent";
//        
//    }
//  @RequestMapping(value="/admin/course/edit/{studentid}" ,method=RequestMethod.GET)
//    public String EditCourse(@PathVariable ("studentid") int studentid ,Model model){
//      
//        
//       
//        model.addAttribute("studentvalue", studentService.getById(studentid));
//        return "backend/DisplayStudent";
//        
//    }  
    

  
  
//      @RequestMapping(value="/displayclassroom",method=RequestMethod.GET)
//    
//    public String displayclassroom(){
//        
//        return "backend/DisplayClassroom";
//    }
}
