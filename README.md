Multi-Stage Flask App (Flask + Gunicorn + NGINX + Docker Compose)

A production-ready multi-stage Dockerized Flask application using:

Flask — Python web framework

Gunicorn — WSGI server

NGINX — Reverse proxy & static file server

Multi-Stage Dockerfile — Smaller, secure, optimized image

Docker Compose — Container orchestration


This project demonstrates real DevOps practices such as containerization, reverse proxy setup, multi-stage builds, and production deployment workflow.


---

🚀 Project Architecture

┌───────────────┐
                   │    Client     │
                   └───────┬───────┘
                           │
                    HTTP/HTTPS
                           │
                   ┌───────▼───────┐
                   │     NGINX     │ ← Reverse Proxy
                   └───────┬───────┘
                           │
                      Proxy Pass
                           │
                   ┌───────▼───────┐
                   │   Gunicorn    │ ← WSGI Server
                   └───────┬───────┘
                           │
                   ┌───────▼───────┐
                   │     Flask     │ ← App Logic
                   └───────────────┘


---

📁 Project Structure

multistage-flask-app/
│
├── app/
│   ├── app.py            # Main Flask application
│   ├── requirements.txt  # Python dependencies
│
├── nginx/
│   ├── nginx.conf        # NGINX reverse proxy config
│
├── Dockerfile            # Multi-stage Dockerfile
├── docker-compose.yml    # Compose file to run services
├── README.md             # Project documentation


---

🛠️ Tech Stack

Component	Purpose

Flask	Backend application
Gunicorn	Runs Flask in production
NGINX	Reverse proxy, handles routing & static files
Docker	Containerization
Multi-Stage Dockerfile	Optimizes image size & security
Docker Compose	Runs Flask & NGINX together



---

🏗️ How to Run the Project

1️⃣ Clone the Repository

git clone https://github.com/Sushil4080/multistage-flask-app.git
cd multistage-flask-app

2️⃣ Build & Start Containers

docker compose up --build

3️⃣ Open Application

Your app will be available at:

👉 http://localhost
👉 NGINX running on port 80
👉 Gunicorn serving Flask internally


---

🧪 Testing the Application

After starting the containers:

curl http://localhost

You should see the Flask homepage response.


---

📦 Multi-Stage Dockerfile (Summary)

This project uses:

Builder stage → Installs dependencies

Final stage → Copies minimal app + installs gunicorn

Reduces size from 600MB → ~100MB



---

🛡️ Production Features

✔ Secure & optimized multi-stage build
✔ Reverse proxy handling by NGINX
✔ Auto-reload disabled in production
✔ Clean separation of app & proxy
✔ Faster deployments using docker-compose


---
