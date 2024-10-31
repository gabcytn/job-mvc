package com.gabcytn.JobListings.Controller;

import com.gabcytn.JobListings.Model.Job;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import java.util.Map;

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

    @GetMapping("/view-jobs")
    public String getViewJobs (){
        return "view-all";
    }

    @PostMapping("/add-job")
    public ModelAndView postAddJob (Job job, ModelAndView modelAndView) {
        modelAndView.addObject("job", job);
        modelAndView.setViewName("post-job");

        return modelAndView;
    }
}
