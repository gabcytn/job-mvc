package com.gabcytn.JobListings.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JobController {
    @GetMapping({"/", "/home"})
    public String getHome () {
        return "views/index.jsp";
    }

    @GetMapping("/add-job")
    public String getAddJob () {
        return "views/add-job";
    }
}
