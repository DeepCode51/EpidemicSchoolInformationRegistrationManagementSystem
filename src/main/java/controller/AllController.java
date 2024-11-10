package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Black;
import pojo.Stranger;
import service.BlackService;
import service.StrangerService;
import service.StudentService;
import service.TeacherService;

import java.util.List;

@Controller
public class AllController {

    @Autowired
    @Qualifier("BlackServiceImpl")
    private BlackService blackService;

    @Autowired
    @Qualifier("StudentServiceImpl")
    private StudentService studentService;

    @Autowired
    @Qualifier("TeacherServiceImpl")
    private TeacherService teacherService;

    @Autowired
    @Qualifier("StrangerServiceImpl")
    private StrangerService strangerService;

    @RequestMapping("/userExit")
    public String userExit(String name,String status){
        if(status.equals("学生")){
            studentService.DeleteStudent(name);
        }else if(status.equals("教师")){
            teacherService.DeleteTeacher(name);
        }else if(status.equals("外来人员")){
            strangerService.DeleteStranger(name);
        }
        return "jsp/UserExit";
    }


}
