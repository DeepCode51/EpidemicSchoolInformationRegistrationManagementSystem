package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Student;
import service.StudentService;
import service.StudentServiceImpl;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    @Qualifier("StudentServiceImpl")
    private StudentService studentService;

    @RequestMapping("/addstu")
    public String addstu(Student student){
        studentService.AddStudentMessage(student);
        return "index";
    }

    @RequestMapping("/queryStu")
    public String queryStu(String stu_num, Model model){
        List<Student> students = studentService.selectStudent(stu_num);
        model.addAttribute("students",students);
        return "/jsp/student/SelectStudent";
    }

    @RequestMapping("/allstu")
    public String allstu(Model model){
        List<Student> students = studentService.allStudent();
        model.addAttribute("students",students);
        return "/jsp/student/SelectStudent";
    }

    @RequestMapping("/deletestu/{name}")
    public String deletestu(@PathVariable("name") String name){
        studentService.DeleteStudent(name);
        return "redirect:/allstu";
    }


}
