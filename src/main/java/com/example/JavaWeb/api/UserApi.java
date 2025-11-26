package com.example.JavaWeb.api;

import com.example.JavaWeb.entity.UserEntity;
import com.example.JavaWeb.repo.UserRepo;
import com.example.JavaWeb.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/user/v1/")
@RequiredArgsConstructor
public class UserApi {
    final UserService userService;

    @PostMapping("/login")
    public ResponseEntity<?> doPostLogin(@RequestParam("email") String email,
                                         @RequestParam("password") String password) {
        HashMap<String, Object> response = new HashMap<>();
        try {
            UserEntity result = userService.getUserByEmailAndPassword(email, password);
            response.put("status", true);
            if (Objects.isNull(result)) {
                response.put("message", "Nguời dùng không tồn tai!");
                response.put("data", null);
                return ResponseEntity.ok("");
            }else {
                response.put("message", "Đăng nhập thành công!");
                response.put("data", result);
            }
            return ResponseEntity.ok(response);

        } catch (Exception e) {
            e.printStackTrace();
            response.put("message","Hệ thống bị lỗi !!!");
            response.put("data", null);
            response.put("status", false);
            return ResponseEntity.ok(response);
        }

    }

    @GetMapping("/getall")
    public ResponseEntity<?> doGetAll() {
        try {
            return ResponseEntity.ok(userService.getAllUsers());
        } catch (Exception e) {
            return ResponseEntity.ok("Hệ thống bị lỗi !!!");
        }
    }

}
