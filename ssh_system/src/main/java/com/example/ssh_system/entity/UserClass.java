package com.example.ssh_system.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class UserClass {
    private Integer id;
    private String classname;
    private String teacher;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date openinghours;


    public Integer getId() {
        return id;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return classname;
    }

    public void setName(String name) {
        this.classname = name;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public Date getOpeninghours() {
        return openinghours;
    }

    public void setOpeninghours(Date openinghours) {
        this.openinghours = openinghours;
    }


    @Override
    public String toString() {
        return "UserClass{" +
                "id=" + id +
                ", classname='" + classname + '\'' +
                ", teacher='" + teacher + '\'' +
                ", openinghours=" + openinghours +
                '}';
    }
}