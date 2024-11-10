package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Stranger;

import java.util.List;

public interface StrangerMapper {

    int AddStranger(Stranger stranger);
    int DeleteStranger(@Param("name") String name);
    List<Stranger> allStranger();
    List<Stranger> selectStranger(String str_id);


}
