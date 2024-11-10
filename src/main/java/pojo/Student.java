package pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {

    private String stu_name;
    private String stu_class;
    private String stu_num;
    private String stu_fudao;
    private String stu_phone;
    private String stu_vech;

}
