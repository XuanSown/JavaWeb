package com.example.JavaWeb.service.impl;

import com.example.JavaWeb.entity.UserEntity;
import com.example.JavaWeb.repo.UserRepo;
import com.example.JavaWeb.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    final UserRepo userRepo;

    @Override
    public List<UserEntity> getAllUsers() throws SQLException, Exception {
        List<UserEntity> users = userRepo.findAll();
        if (users.isEmpty()) {
            return null;
        } else {
            return users;
        }
    }

    @Override
    public UserEntity getUserByEmailAndPassword(String email, String password) throws SQLException, Exception{
//        return userRepo.findByEmailAndPassword(email, password);
        UserEntity user = userRepo.findByEmailAndPassword(email, password);
        if (Objects.isNull(user)) {
            return null;
        } else  {
            return user;
        }
    }
}
