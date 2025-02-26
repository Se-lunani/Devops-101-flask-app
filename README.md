# Devops-101-flask-app

## Overview
This project is a beginner-friendly introduction to DevOps practices using a simple Python Flask web application. It demonstrates key concepts such as building a web application, testing, containerization with Docker, and setting up a continuous integration (CI) pipeline using GitHub Actions.

## Features
- **Simple Flask Web Application:**  
  - A home route (`/`) that displays a greeting message.
  - An API endpoint (`/api/message`) that returns a JSON response.
- **Automated Testing:**  
  - Uses `pytest` to verify that the application endpoints work as expected.
- **Docker Containerization:**  
  - A Dockerfile is provided to package the app into a container, ensuring consistency across development and production environments.
- **Continuous Integration:**  
  - GitHub Actions is configured to automatically run tests on each push.

## File Structure
```plaintext
project/
├── app.py                  # Main Flask application
├── requirements.txt        # Python dependencies
├── test_app.py             # Pytest test cases for the Flask app
├── Dockerfile              # Dockerfile to containerize the app
├── README.md               # Project overview and setup instructions
└── .github/
    └── workflows/
        └── ci.yml          # GitHub Actions workflow for CI

## Getting Started
Prerequisites
Python 3.9+ (if running the app locally)
Docker (if you prefer to run the app in a container)
Git for version control
Running the Application Locally
Clone the repository:

git clone https://github.com/Se-lunani/Devops-101-flask-app.git
cd Devops-101-flask-app
Set up a virtual environment (optional but recommended):

python3 -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
Install dependencies:

pip install -r requirements.txt
Run the Flask application:

python app.py
The application will be available at http://localhost:5000.

Running the Application with Docker
Build the Docker image:

docker build -t my-python-app .
Run the Docker container:

docker run -p 5000:5000 my-python-app
Access the application at http://localhost:5000.

Running Tests
This project includes tests to ensure the application functions correctly.

Activate your virtual environment (if not already activated).
Run the tests:

pytest
Continuous Integration (CI)
The project is integrated with GitHub Actions to run tests automatically on every push. The CI configuration is defined in .github/workflows/ci.yml.
