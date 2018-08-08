# jenkins_testing

> A basic Jenkins/project setup for testing

## Setup

1. Start Jenkins with Docker: `docker run -p 8080:8080 jenkins/jenkins:lts`
2. Copy the admin password provided in the terminal output to a text file
3. Go to http://localhost:8080 in your browser
4. Log in with the admin password which you copied to a text file
5. Install the recommended plugins
6. Click the "Continue as admin" link
7. Click "Save and finish"
8. Click "Start using Jenkins"

## Creating a multibranch pipeline job

1. Click "Create a Job" 
2. Enter the job name
3. Select the Multibranch Pipeline option
4. Add the Github Branch Source under Branch Sources
5. Enter your username from GitHub and select a repository
6. Under Scan Multibranch Pipeline select the checkbox
7. Set the interval to 1 min
8. Click Save

The repository will start scanning right away. 
