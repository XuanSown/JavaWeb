package com.example.JavaWeb.repo;

import com.example.JavaWeb.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends JpaRepository<UserEntity, Long> {
    UserEntity findByEmailAndPassword(String email, String password);
}
