package com.study.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudyController {
    @RequestMapping("/study")
    public String test() {
        return "This is study";
    }
}
