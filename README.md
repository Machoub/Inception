# 🏗️ Inception – 42 Project

> Build a secure, scalable, and modular Docker-based infrastructure  
> using Docker Compose and services like NGINX, WordPress, MariaDB, and more.

---

## 📌 Project Overview

**Inception** is a DevOps project aimed at introducing the basics of system administration, container orchestration, and secure service deployment using **Docker** and **Docker Compose**.

The goal is to set up a complete WordPress website running on a LEMP stack inside containers, with persistent volumes, domain SSL, and robust configuration management.

---

## 🧠 Objectives

- Use **Docker** to containerize services.
- Use **Docker Compose** to orchestrate them.
- Set up a secure WordPress site with:
  - **NGINX** reverse proxy
  - **MariaDB** database
  - **PHP-FPM** backend
- Secure the site with **SSL (TLS)** certificates via **OpenSSL**.
- Implement **volumes** to persist data (WordPress, DB).
- Isolate services into individual containers.
- Ensure the whole stack runs on **localhost only**.
- Bonus: Add extra services like Redis, Adminer, static site, FTP, etc.

---

## 🧱 Services

| Service     | Description                                 |
|-------------|---------------------------------------------|
| **NGINX**   | Handles HTTPS termination and reverse proxy |
| **WordPress** | Content management system (CMS)           |
| **MariaDB** | MySQL-compatible relational database engine |
| **PHP-FPM** | Handles PHP processing for WordPress        |
| **OpenSSL** | Generates self-signed TLS certificates      |
| *(Bonus)*   | Redis, Adminer, Portainer, FTP, etc.        |

---

## 🧑‍💻 Author
Project developed as part of the 42 Common Core.  
Developed by [machouba](https://github.com/Machoub) 
