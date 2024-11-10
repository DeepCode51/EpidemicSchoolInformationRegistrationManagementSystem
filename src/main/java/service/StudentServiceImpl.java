package service;

import mapper.StudentMapper;
import pojo.Student;

import java.util.List;

public class StudentServiceImpl implements StudentService{

    private StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @Override
    public int AddStudentMessage(Student student) {
        return studentMapper.AddStudentMessage(student);
    }

    @Override
    public int DeleteStudent(String name) {
        return studentMapper.DeleteStudent(name);
    }

    @Override
    public List<Student> selectStudent(String stu_num) {
        return studentMapper.selectStudent(stu_num);
    }

    @Override
    public List<Student> allStudent() {
        return studentMapper.allStudent();
    }
}
