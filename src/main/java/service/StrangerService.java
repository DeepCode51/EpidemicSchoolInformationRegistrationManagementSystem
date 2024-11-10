package service;

import org.apache.ibatis.annotations.Param;
import pojo.Stranger;

import java.util.List;

public interface StrangerService {

    int AddStranger(Stranger stranger);
    int DeleteStranger(String name);
    List<Stranger> allStranger();
    List<Stranger> selectStranger(String str_id);
}
