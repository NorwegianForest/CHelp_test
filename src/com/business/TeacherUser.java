package com.business;

import com.DBQuery.DataProcess;

import java.util.ArrayList;
import java.util.List;

public class TeacherUser extends OrdinUser {

    private String university; // 所在大学
    private String name; // 姓名
    private String title; // 职称
    private String introduce; // 教师简介
    private List<Course> courseList; // 所开课程列表

    public TeacherUser () {
        super();
    }

    public TeacherUser(String userName) {
        this.userName = userName;
        String sql = "select * from users where username='" + userName + "'";
        DataProcess.findTeacher(sql, this);
    }

    public TeacherUser(int id) {
        this.id = id;
        String sql = "select * from users where id='" + id + "'";
        DataProcess.findTeacher(sql, this);
    }

    public void loadCourseList() {
        courseList = new ArrayList<>();
        String sql = "select * from course where teacher_id=" + id;
        DataProcess.loadCourseList(sql, courseList);
    }

    public String checkTeacher() {
        if (userName == null || "".equals(userName) || "null".equals(userName)) {
            return "<SCRIPT language=javascript>alert('请先登录...');location.href='login.jsp';</SCRIPT>";
        } else {
            if (this.name == null || "".equals(name) || "null".equals(name)) {
                return "<SCRIPT language=javascript>alert('请先注册教师用户...');location.href='register_teacher.jsp';</SCRIPT>";
            } else {
                return "";
            }
        }
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }
}
