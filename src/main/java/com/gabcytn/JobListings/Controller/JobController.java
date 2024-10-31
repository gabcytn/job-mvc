package com.gabcytn.JobListings.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JobController {
    @GetMapping({"/", "/home"})
    public String getHome () {
        return "index";
    }

    @GetMapping("/add-job")
    public String getAddJob () {
        return "add-job";
    }
}
