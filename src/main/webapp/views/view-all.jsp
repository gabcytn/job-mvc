<%@page language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <title>View all</title>
    <style>
      #header-container {
        min-height: 300px;
        background-color: rgb(43, 101, 236);
        display: flex;
        justify-content: center;
        align-items: center;
      }
    </style>
  </head>
  <body>
    <div id="header-container">
      <h2 class="text-light">Welcome to Job Listings</h2>
    </div>
    <div class="container mt-2">
      <div class="row g-2">
        <c:forEach var="job" items="${jobs}">
            <div class="col-6" style="min-height: 275px !important;">
              <div class="box bg-secondary-subtle p-3">
                <h3>${job.id}</h3>
                <p><strong>Job Title</strong>: ${job.title}</p>
                <p><strong>Job Description</strong>: ${job.description}</p>
                <p><strong>Years of Experience</strong>: ${job.experience}</p>
                <strong>Tech Stack:</strong>
                <ul>
                  <c:forEach var="tech" items="${job.techStack}">
                    <li>${tech}</li>
                  </c:forEach>
                </ul>
              </div>
            </div>
        </c:forEach>
      </div>
      <a href="/home" class="btn btn-warning my-2">Home<a>
    </div>
  </body>
</html>