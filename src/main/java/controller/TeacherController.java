package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Student;
import pojo.Teacher;
import service.TeacherService;

import java.util.List;

@Controller
public class TeacherController {

    @Autowired
    @Qualifier("TeacherServiceImpl")
    private TeacherService teacherService;

    @RequestMapping("addtea")
    public String addtea(Teacher teacher){
        teacherService.AddTeacher(teacher);
        return "index";
    }

    @RequestMapping("/queryTea")
    public String queryStu(String tea_num, Model model){
        List<Teacher> teachers = teacherService.selectTeacher(tea_num);
        model.addAttribute("teachers",teachers);
        return "/jsp/teacher/SelectTeacher";
    }

    @RequestMapping("/alltea")
    public String allstu(Model model){
        List<Teacher> teachers = teacherService.allTeacher();
        model.addAttribute("teachers",teachers);
        return "/jsp/teacher/SelectTeacher";
    }

    @RequestMapping("/deletetea/{name}")
    public String deletetea(@PathVariable("name") String name){
        teacherService.DeleteTeacher(name);
        return "redirect:/alltea";
    }
}
