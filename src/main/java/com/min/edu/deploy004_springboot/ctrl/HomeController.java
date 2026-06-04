package com.min.edu.deploy004_springboot.ctrl;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    
    @GetMapping("/")
    public String getMethodName() {
        return new String("SpringBoot Docker 배포");
    }
    
}
