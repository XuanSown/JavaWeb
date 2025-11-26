package com.example.JavaWeb.service;

import com.example.JavaWeb.entity.UserEntity;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    List<UserEntity> getAllUsers() throws SQLException, Exception;
    UserEntity getUserByEmailAndPassword(String email, String password) throws SQLException, Exception;
}
