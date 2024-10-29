<%@page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Job</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container my-3">
        <h2 class="text-center">Job Listing</h2>
        <form action="/add-job" method="get">
            <label for="id" class="form-label">ID</label>
            <input type="number"  name="id" id="id" class="form-control"required>
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" id="title" class="form-control"required>
            <label for="description" class="form-label">Description</label>
            <textarea type="text" name="description" id="description" class="form-control"required>
            </textarea>
            <label for="experience" class="form-label">Years of Experience</label>
            <input type="number"  name="experience" id="experience" class="form-control"required>

            <select name="tech-stack" id="tech-stack" class="form-select mt-3" multiple required>
                <option value="JavaScript">JavaScript</option>
                <option value="TypeScript">TypeScript</option>
                <option value="Java">Java</option>
                <option value="React">React</option>
                <option value="Expo">Expo</option>
                <option value="Spring">Spring</option>
                <option value="Kotlin">Kotlin</option>
                <option value="Swift">Swift</option>
                <option value="Python">Python</option>
                <option value="Express">Express</option>
            </select>

            <button class="btn btn-primary mt-3">Submit</button>
        </form>
    </div>
</body>
</html>