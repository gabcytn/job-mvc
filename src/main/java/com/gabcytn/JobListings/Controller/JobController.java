package com.gabcytn.JobListings.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JobController {
    @GetMapping({"/", "/home"})
    public String getHome () {
        System.out.println("hello");
        return "index";
    }
}
