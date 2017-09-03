/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.Model;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author romy
 */
@Entity
@Table(name = "student")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int studentid;
    @Column(name = "firstname")
    @Size(min = 2, max = 20)
    private String firstname;
    @Column(name = "lastname")
    @Size(min = 2, max = 20)
    private String lastname;
    @Column(name = "phonenumber")
    @Size(min = 2, max = 20)
    private int phonenumber;
    @Column(name = "email")
    @Size(min = 2, max = 20)
    private String email;
    @Column(name = "photo")
    @Size(min = 2, max = 20)
    private String photo;
    
     @ManyToOne(cascade = CascadeType.ALL)
    private Classroom classroom;
   
//    public Classroom getClassroom(){
//        return classroom;
//    }
//    public void setClassroom(Classroom classroom){
//        this.classroom=classroom;
//        
//    }

}
