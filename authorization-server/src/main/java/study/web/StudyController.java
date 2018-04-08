package study.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudyController {

    @RequestMapping("/admin")
    public String admin() {
        return "This is admin info";
    }
}
