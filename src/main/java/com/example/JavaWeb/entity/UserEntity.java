package com.example.JavaWeb.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Entity
@Getter
@Setter
@Table(name= "j6_user")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long id;
    @Column(name = "user_name")
    private String name;
    @Column(name = "user_password")
    private String password;
    @Column(name = "user_email")
    private String email;
    @Column(name = "user_birthday")
    private Date birthday;
}
