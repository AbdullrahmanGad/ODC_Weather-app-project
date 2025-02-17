# **Weather-app Deployment Using Docker, Ansible, and Jenkins :-**
This project streamlines the deployment of a Python-based Weather App by leveraging the power of Jenkins, Docker, and Ansible. The automated pipeline integrates Continuous Integration and Continuous Deployment (CI/CD) principles to ensure smooth and efficient delivery. It begins by automatically fetching the latest updates from a GitHub repository, followed by the creation of a Docker image for the app. This image is then pushed to Docker Hub for easy access and scalability. Finally, using Ansible, the app is seamlessly deployed across virtual machines, ensuring a robust and scalable deployment process. With this setup, the entire application lifecycle—coding, building, testing, and deployment is automated and optimized.

![Ci](https://github.com/user-attachments/assets/ebe1750e-cf9c-4fe2-aee0-550bf0c952fe)

# Prerequisites :-
1- Python (Flask)  
2- [OpenWeatherMap API Key](https://openweathermap.org/api/).  
3- Docker and Docker Hub account.  
4- 2 Vagrant Machines.  
5- Jenkins (for CI/CD pipeline).  
6- Ansible (for deployment automation).  
7- Make sure To use [Credentials](https://medium.com/@nikhil.nagarajappa/configuring-the-git-credentials-in-jenkins-4b584a797b45/) for GitHub , [Credentials](https://dzone.com/articles/building-docker-images-to-docker-hub-using-jenkins/) for Docker Hub.  
8- Install and Configure [ngrok](https://ngrok.com/docs/getting-started/).  
## To Start :-
- Clone the Repository :-
  ```
  git clone https://github.com/your-repository/weatherapp.git
  cd weatherapp
  ```
- Replace the API_KEY in app.py with your OpenWeatherMap API key.
- Use your GitHub and DockerHub Credentials intsead of mine. 
- Use your DockerHub username in both the Jenkinsfile and the Ansible playbook.    
# CI/CD Pipeline Stages :-  
- (Checkout): Pulls code from GitHub.
- (Build Docker Image): Builds a Docker image from the code.
- (Push Docker Image): Pushes the built image to Docker Hub.
- (Run Ansible Playbook): Runs an Ansible playbook to automate deployment tasks.
- (Success/Failure): Sends email notifications on success or failure of the pipeline execution.

![pipeline](https://github.com/user-attachments/assets/0d19a4f5-7972-4d4d-b698-fcfd74313bfe)  
# Final Outcome :-  

![mm01](https://github.com/user-attachments/assets/535e9c6a-3dc9-4161-89ef-00c1d8999f43) ![mm02](https://github.com/user-attachments/assets/97a3d5fa-912c-4012-94d7-e7a1280e2d2b)  

# Email Notifications :-  
The Jenkins pipeline is set up to send email notifications to developers regarding the build status. If the deployment is successful, an email is triggered with a success message. In case of a build failure, an email is sent With Buildlogs attached , which can assist developers in troubleshooting and debugging the issue.

![successs](https://github.com/user-attachments/assets/9b5f5ee5-094a-443f-a94a-f398c5aea357)![Faill](https://github.com/user-attachments/assets/7bb00b7a-296f-47a6-b8b6-7792486d41df)












