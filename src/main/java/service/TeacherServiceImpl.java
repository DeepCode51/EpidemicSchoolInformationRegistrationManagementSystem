package service;

import mapper.TeacherMapper;
import pojo.Teacher;

import java.util.List;

public class TeacherServiceImpl implements TeacherService{

    private TeacherMapper teacherMapper;

    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public int AddTeacher(Teacher teacher) {
        return teacherMapper.AddTeacher(teacher);
    }

    @Override
    public int DeleteTeacher(String name) {
        return teacherMapper.DeleteTeacher(name);
    }

    @Override
    public List<Teacher> selectTeacher(String tea_num) {
        return teacherMapper.selectTeacher(tea_num);
    }

    @Override
    public List<Teacher> allTeacher() {
        return teacherMapper.allTeacher();
    }
}
