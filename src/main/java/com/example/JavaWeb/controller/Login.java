package com.example.JavaWeb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class Login {
    @GetMapping("/login")
    public String getUILogin() {
        return "login";
    }

    @GetMapping("/home")
    public String getUIHome() {
        return "home";
    }
}
