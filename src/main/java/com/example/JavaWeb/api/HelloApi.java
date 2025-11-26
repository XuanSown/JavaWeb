package com.example.JavaWeb.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hi")
public class HelloApi {
    @GetMapping("/")
    public ResponseEntity<?> doGetHello() {
        return ResponseEntity.ok("Hello World");
    }
}
