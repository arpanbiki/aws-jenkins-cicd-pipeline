cat > README.md <<'EOF'
<div align="center">

# 🚀 AWS Jenkins CI/CD Pipeline

### End-to-End DevOps Lifecycle using AWS EC2, Ansible, Jenkins, GitHub, GitHub Webhooks and Docker

![AWS](https://img.shields.io/badge/AWS-EC2-orange?style=for-the-badge&logo=amazon-aws)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-orange?style=for-the-badge&logo=ubuntu)
![Ansible](https://img.shields.io/badge/Ansible-Automation-black?style=for-the-badge&logo=ansible)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red?style=for-the-badge&logo=jenkins)
![GitHub](https://img.shields.io/badge/GitHub-Source%20Control-black?style=for-the-badge&logo=github)
![Docker](https://img.shields.io/badge/Docker-Containerization-blue?style=for-the-badge&logo=docker)
![Apache](https://img.shields.io/badge/Apache-Web%20Server-red?style=for-the-badge)

<br>

**Automated Build → Test → Production Deployment Pipeline**

<br>

GitHub → Webhook → Jenkins → Build → Test → Production → Docker → Live Website

</div>

---

# 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Problem Statement](#-problem-statement)
- [Project Objectives](#-project-objectives)
- [Solution](#-solution)
- [Architecture](#-architecture)
- [Complete CI/CD Workflow](#-complete-cicd-workflow)
- [Technology Stack](#-technology-stack)
- [AWS Infrastructure](#-aws-infrastructure)
- [Server Architecture](#-server-architecture)
- [Project Structure](#-project-structure)
- [Phase 1 - AWS Infrastructure](#phase-1---aws-infrastructure)
- [Phase 2 - Server Connectivity](#phase-2---server-connectivity)
- [Phase 3 - Ansible Configuration](#phase-3---ansible-configuration)
- [Phase 4 - Jenkins Installation](#phase-4---jenkins-installation)
- [Phase 5 - Jenkins Agents](#phase-5---jenkins-agents)
- [Phase 6 - Docker Configuration](#phase-6---docker-configuration)
- [Phase 7 - GitHub Configuration](#phase-7---github-configuration)
- [Phase 8 - Jenkins Credentials](#phase-8---jenkins-credentials)
- [Phase 9 - Build Job](#phase-9---build-job)
- [Phase 10 - Test Job](#phase-10---test-job)
- [Phase 11 - Production Job](#phase-11---production-job)
- [Phase 12 - GitHub Webhook](#phase-12---github-webhook)
- [Phase 13 - Branch Strategy](#phase-13---branch-strategy)
- [Phase 14 - Complete Deployment](#phase-14---complete-deployment)
- [Phase 15 - Website Change Demonstration](#phase-15---website-change-demonstration)
- [Docker Implementation](#-docker-implementation)
- [Jenkins Pipeline Scripts](#-jenkins-pipeline-scripts)
- [Troubleshooting](#-troubleshooting)
- [Security](#-security)
- [Advantages](#-advantages)
- [Future Enhancements](#-future-enhancements)
- [Learning Outcomes](#-learning-outcomes)
- [Project Demonstration](#-project-demonstration)
- [Final Checklist](#-final-checklist)
- [Author](#-author)

---

# 📌 Project Overview

This project implements a complete **DevOps CI/CD lifecycle** for a web application using AWS, Ansible, Jenkins, GitHub, GitHub Webhooks and Docker.

The infrastructure consists of multiple Ubuntu EC2 instances. Ansible is used for automated server configuration and software installation.

Jenkins is configured using a Master-Agent architecture.

GitHub acts as the source-code repository and GitHub Webhooks automatically notify Jenkins whenever changes are pushed.

Docker is used to build and run the web application in containers.

The project implements a **branch-based CI/CD strategy**:

```text
develop branch
     |
     v
   BUILD
     |
     v
   TEST
     |
     v
   STOP


master branch
     |
     v
   BUILD
     |
     v
   TEST
     |
     v
   PROD
     |
     v
 Docker Container
     |
     v
 Live Website

Production Branch
master
   |
   v
Build
   |
   v
Test
   |
   v
Production
   |
   v
Docker Container
   |
   v
Live Website

