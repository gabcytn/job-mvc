package com.gabcytn.JobListings.Controller;

import com.gabcytn.JobListings.Model.Job;
import com.gabcytn.JobListings.Service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@Lazy
public class JobController {

    @Autowired
    JobService jobService;

    @GetMapping({"/", "/home"})
    public String getHome () {
        return "index";
    }

    @GetMapping("/add-job")
    public String getAddJob () {
        return "add-job";
    }

    @GetMapping("/view-jobs")
    public ModelAndView getViewJobs (ModelAndView modelAndView){
        List<Job> jobs = jobService.getAllJobs();
        modelAndView.addObject("jobs", jobs);
        modelAndView.setViewName("view-all");

        return modelAndView;
    }

    @PostMapping("/add-job")
    public ModelAndView postAddJob (Job job, ModelAndView modelAndView) {
        modelAndView.addObject("job", job);
        modelAndView.setViewName("post-job");

        return modelAndView;
    }
}
