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

## Prepare for GitHub

1. Go to https://github.com/settings/tokens to get a personal access token
2. Click "Generate new token"
3. Confirm your password
4. Enter the token description
5. Select the "repo" checkbox
6. Click the "Generate Token" button
7. Copy the token to a text file

## Creating a multibranch pipeline job

1. Click "Create a Job" 
2. Enter the job name
3. Select the Multibranch Pipeline option
4. Add the Github Branch Source under Branch Sources
  1. Click the "Add" button next to credentials
  2. Select Global credentials from the Domain dropdown
  3. Select Username with password from the Kind dropdown
  4. Keep the default Scope
  5. Add your Github username
  6. Add your personal access token to the Password field
  5. Enter your username from GitHub and select a repository
7. Click Save
8. Click the "Scan Repository now" link in the sidebar

The repository will start scanning right away. 

## Node.js support

Install the NodeJS plugin

1. Go to Jenkins > Manage Jenkins > Manage Plugins
2. Click the Available tab
3. In the Filter input box type "NodeJS"
4. Check the box next to the "NodeJS"
5. Click "Install and Restart"
6. Log in and navigate to Jenkins > Manage Jenkins > Global Tool Configuration
7. Find the NodeJS section and add the latest version of node, name it "latest"
8. Click save
