package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Student;

import java.util.List;

public interface StudentMapper {

    int AddStudentMessage(Student student);
    int DeleteStudent(@Param("name") String name);
    List<Student> selectStudent(String stu_num);
    List<Student> allStudent();

}
