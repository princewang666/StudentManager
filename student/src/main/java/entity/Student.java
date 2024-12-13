package entity;

import lombok.Data;

@Data
public class Student {
    private String id;
    private String password;
    private String name;
    private String sex;
    private String schoolDate;
    private String major;
    private String email;
}
