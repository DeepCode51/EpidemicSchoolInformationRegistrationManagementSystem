package service;

import pojo.Black;

import java.util.List;

public interface BlackService {

    List<Black> selectBlack(String id);
    List<Black> allUser();
    int delete(String id);
    int addBlack(Black black);
}
