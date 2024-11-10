package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Student;
import pojo.Teacher;

import java.util.List;

public interface TeacherMapper {

    int AddTeacher(Teacher teacher);
    int DeleteTeacher(@Param("name") String name);
    List<Teacher> selectTeacher(String tea_num);
    List<Teacher> allTeacher();
}
