package com.gabcytn.JobListings.Service;

import com.gabcytn.JobListings.Model.Job;
import com.gabcytn.JobListings.Repository.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Lazy
public class JobService {

    @Autowired
    JobRepository jobRepository;

    public void addJob(Job job) {
        jobRepository.save(job);
    }

    public List<Job> getAllJobs () {
        return jobRepository.findAll();
    }
}
