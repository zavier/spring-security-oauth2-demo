package study.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudyController {

    @RequestMapping("/first")
    public String login() {
        return "This is no need login page";
    }

    @RequestMapping("/study")
    public String test() {
        return "This is study";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "This is admin info";
    }
}
