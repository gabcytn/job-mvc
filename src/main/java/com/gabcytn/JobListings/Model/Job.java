package com.gabcytn.JobListings.Model;

import java.util.List;

public class Job {

    private int id;
    private String title;
    private String description;
    private int experience;
    private List<String> techStack;

    public Job(int id, String title, String description, int experience, List<String> techStack) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.experience = experience;
        this.techStack = techStack;
    }

    public Job () {}

    public List<String> getTechStack() {
        return techStack;
    }

    public void setTechStack(List<String> techStack) {
        this.techStack = techStack;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
