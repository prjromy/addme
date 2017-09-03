/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.romy.AddMe.Model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author romy
 */
@Entity
@Table(name = "classroom" )
//uniqueConstraints = {@UniqueConstraint(columnNames = {"classroomname"})}
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Classroom implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    private int classroomid;
    @Column(name = "classroomname")
    @Size(min = 2, max = 20)
    private String classroomname;
    @Column(name = "classroomteacher")
    @Size(min = 2, max = 20)
    private String classroomteacher;
//    @OneToMany(cascade=CascadeType.ALL,mappedBy="Student")
//    private Set<Student> students;
    
    
      @Column(name = "location")
    @Size(min = 2, max = 20)
    private String location;

}
