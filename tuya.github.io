# Create a ZIP file containing a simple 4-page HTML/CSS website template
import zipfile
import os

base_path = "/mnt/data/tuya_website"
os.makedirs(base_path, exist_ok=True)

# HTML file contents
files = {
    "index.html": """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tuya's Online School</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Welcome to Tuya's Online School</h1>
        <nav>
            <a href="index.html">Home</a>
            <a href="courses.html">Courses</a>
            <a href="about.html">About</a>
            <a href="contact.html">Contact</a>
        </nav>
    </header>
    <main>
        <h2>Start Learning Today!</h2>
        <p>This is the homepage of your online school website.</p>
    </main>
    <footer>
        <p>&copy; 2025 Tuya's School</p>
    </footer>
</body>
</html>
""",
    "courses.html": """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Courses - Tuya's School</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Courses</h1>
        <nav>
            <a href="index.html">Home</a>
            <a href="courses.html">Courses</a>
            <a href="about.html">About</a>
            <a href="contact.html">Contact</a>
        </nav>
    </header>
    <main>
        <h2>Available Courses</h2>
        <ul>
            <li>Grade 6 Algebra</li>
            <li>Grade 7 Algebra</li>
            <li>Math Basics</li>
        </ul>
    </main>
    <footer>
        <p>&copy; 2025 Tuya's School</p>
    </footer>
</body>
</html>
""",
    "about.html": """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About - Tuya's School</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>About</h1>
        <nav>
            <a href="index.html">Home</a>
            <a href="courses.html">Courses</a>
            <a href="about.html">About</a>
            <a href="contact.html">Contact</a>
        </nav>
    </header>
    <main>
        <h2>About Tuya</h2>
        <p>Tuya is a passionate math teacher helping students succeed through engaging and fun lessons.</p>
    </main>
    <footer>
        <p>&copy; 2025 Tuya's School</p>
    </footer>
</body>
</html>
""",
    "contact.html": """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact - Tuya's School</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Contact</h1>
        <nav>
            <a href="index.html">Home</a>
            <a href="courses.html">Courses</a>
            <a href="about.html">About</a>
            <a href="contact.html">Contact</a>
        </nav>
    </header>
    <main>
        <h2>Get in Touch</h2>
        <p>Email: tuyateacher@example.com</p>
    </main>
    <footer>
        <p>&copy; 2025 Tuya's School</p>
    </footer>
</body>
</html>
""",
    "style.css": """body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: #f9f9f9;
    color: #333;
}

header {
    background: #c3dafe;
    padding: 1em;
    text-align: center;
}

header nav a {
    margin: 0 10px;
    text-decoration: none;
    color: #333;
    font-weight: bold;
}

main {
    padding: 2em;
    background: white;
}

footer {
    text-align: center;
    padding: 1em;
    background: #eee;
    margin-top: 2em;
}
"""
}

# Write files
for filename, content in files.items():
    with open(os.path.join(base_path, filename), "w") as f:
        f.write(content)

# Create ZIP file
zip_path = "/mnt/data/tuya_online_school.zip"
with zipfile.ZipFile(zip_path, "w") as zipf:
    for filename in files:
        zipf.write(os.path.join(base_path, filename), arcname=filename)

zip_path
