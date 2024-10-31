<%@page language="java" %>

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
        <div class="col-6">
          <div class="box bg-secondary-subtle p-3">
            <h3>101</h3>
            <p><strong>Job Title</strong>: React</p>
            <p><strong>Job Description</strong>: Senior React Role</p>
            <p><strong>Years of Experience</strong>: 3</p>
            <strong>Tech Stack:</strong>
            <ul>
              <li>JavaScript</li>
              <li>TypeScript</li>
              <li>React</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>