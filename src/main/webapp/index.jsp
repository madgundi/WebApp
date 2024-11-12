<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile Form</title>
</head>
<body>
    <h2>Student Profile Form</h2>

    <!-- Form Section -->
    <div id="form-container">
        <form id="profileForm">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="age">Age:</label>
            <input type="text" id="age" name="age" required><br><br>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select><br><br>

            <label for="course">Course:</label>
            <input type="text" id="course" name="course" required><br><br>

            <button type="button" onclick="displayProfile()">Submit</button>
        </form>
    </div>

    <!-- Display Section -->
    <div id="profile-display" style="display: none;">
        <h2>Student Profile</h2>
        <p><strong>Name:</strong> <span id="displayName"></span></p>
        <p><strong>Email:</strong> <span id="displayEmail"></span></p>
        <p><strong>Age:</strong> <span id="displayAge"></span></p>
        <p><strong>Gender:</strong> <span id="displayGender"></span></p>
        <p><strong>Course:</strong> <span id="displayCourse"></span></p>
        <button onclick="editProfile()">Edit Profile</button>
    </div>

    <script>
        function displayProfile() {
            // Get form values
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const age = document.getElementById("age").value;
            const gender = document.getElementById("gender").value;
            const course = document.getElementById("course").value;

            // Display values
            document.getElementById("displayName").innerText = name;
            document.getElementById("displayEmail").innerText = email;
            document.getElementById("displayAge").innerText = age;
            document.getElementById("displayGender").innerText = gender;
            document.getElementById("displayCourse").innerText = course;

            // Show the profile display section and hide the form
            document.getElementById("form-container").style.display = "none";
            document.getElementById("profile-display").style.display = "block";
        }

        function editProfile() {
            // Show the form section and hide the profile display section
            document.getElementById("form-container").style.display = "block";
            document.getElementById("profile-display").style.display = "none";
        }
    </script>
</body>
</html>
