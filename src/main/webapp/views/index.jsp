<%@page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Home</title>
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
    <div class="container">
        <div class="row gap-3">
            <div class="col d-flex flex-column align-items-center py-3 mt-3 bg-secondary-subtle rounded">
                <h4>View all jobs</h4>
                <a href="/view-jobs" class="btn btn-primary mt-2">View</a>
            </div>

            <div class="col d-flex flex-column align-items-center py-3 mt-3 bg-secondary-subtle rounded">
                <h4>Add a job</h4>
                <a href="/add-job" class="btn btn-primary mt-2">Add</a>
            </div>
        </div>
    </div>

</body>
</html>