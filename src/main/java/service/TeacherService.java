package service;

import org.apache.ibatis.annotations.Param;
import pojo.Teacher;

import java.util.List;

public interface TeacherService {

    int AddTeacher(Teacher teacher);
    int DeleteTeacher(String name);
    List<Teacher> selectTeacher(String tea_num);
    List<Teacher> allTeacher();
}
