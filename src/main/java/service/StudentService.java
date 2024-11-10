package service;

import org.apache.ibatis.annotations.Param;
import pojo.Student;

import java.util.List;

public interface StudentService {

    int AddStudentMessage(Student student);
    int DeleteStudent(String name);
    List<Student> selectStudent(String num);
    List<Student> allStudent();

}
