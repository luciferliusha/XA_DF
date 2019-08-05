package com.zjcds.controller;

import com.zjcds.service.StudentService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

    //获取日志记录器Logger，名字为本类类名
    private static Logger log = Logger.getLogger(StudentController.class);
    @Autowired
    private StudentService studentService;

    @RequestMapping("/student/studentList")
    public ModelAndView findAll() {
        ModelAndView mv = new ModelAndView("student/studentList");
        mv.addObject("studentList", studentService.findAll());
        log.info("获取学生列表信息");
        return mv;
    }

    /**
     * 返回学生列表视图
     *
     * @return
     */
    /*@RequestMapping("/student/studentList")
    public String studentList() {
        log.info("返回学生列表视图"); return "student/studentList";
    }

    *//**
     * 返回学生列表视图
     *
     * @return
     *//*
    @RequestMapping("/student/getStudentList")
    @ResponseBody
    public Map<String, Object> getStudentList() {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        log.info("获取学生列表信息");
        List<Student> rows = studentService.findAll();
        int total = studentService.getTotal();
        resultMap.put("rows", rows);
        resultMap.put("total", total);
        return resultMap;
    }*/

}
