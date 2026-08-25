<div align="center">

# 🚀 AWS Jenkins CI/CD Pipeline

### End-to-End DevOps CI/CD Automation using AWS, Ansible, Jenkins, GitHub, GitHub Webhooks and Docker

![AWS](https://img.shields.io/badge/AWS-EC2-orange?style=for-the-badge&logo=amazonaws)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?style=for-the-badge&logo=ubuntu)
![Ansible](https://img.shields.io/badge/Ansible-Automation-black?style=for-the-badge&logo=ansible)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?style=for-the-badge&logo=jenkins)
![GitHub](https://img.shields.io/badge/GitHub-Source%20Control-181717?style=for-the-badge&logo=github)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker)
![Apache](https://img.shields.io/badge/Apache-Web%20Server-D22128?style=for-the-badge&logo=apache)

<br>

**GitHub → Webhook → Jenkins → Build → Test → Production → Docker → Live Website**

<br>

A complete branch-based CI/CD implementation with automated build, testing and production deployment.

</div>

---

# 📑 Table of Contents

- [📖 Project Overview](#-project-overview)
- [❗ Problem Statement](#-problem-statement)
- [🎯 Project Objectives](#-project-objectives)
- [💡 Solution](#-solution)
- [🏗️ Architecture](#️-architecture)
- [🔄 CI/CD Workflow](#-cicd-workflow)
- [🧰 Technology Stack](#-technology-stack)
- [☁️ AWS Infrastructure](#️-aws-infrastructure)
- [🖥️ Server Architecture](#️-server-architecture)
- [📂 Project Structure](#-project-structure)
- [⚙️ Phase 1 - AWS Infrastructure](#️-phase-1---aws-infrastructure)
- [🔐 Phase 2 - Server Configuration](#-phase-2---server-configuration)
- [⚙️ Phase 3 - Ansible Configuration](#️-phase-3---ansible-configuration)
- [🔨 Phase 4 - Jenkins Installation](#-phase-4---jenkins-installation)
- [🖥️ Phase 5 - Jenkins Agents](#️-phase-5---jenkins-agents)
- [🐳 Phase 6 - Docker Configuration](#-phase-6---docker-configuration)
- [🐙 Phase 7 - GitHub Configuration](#-phase-7---github-configuration)
- [🔑 Phase 8 - Jenkins Credentials](#-phase-8---jenkins-credentials)
- [🔨 Phase 9 - Build Job](#-phase-9---build-job)
- [🧪 Phase 10 - Test Job](#-phase-10---test-job)
- [🚀 Phase 11 - Production Job](#-phase-11---production-job)
- [🔔 Phase 12 - GitHub Webhook](#-phase-12---github-webhook)
- [🌿 Phase 13 - Branch Strategy](#-phase-13---branch-strategy)
- [🌐 Phase 14 - Website Deployment Demonstration](#-phase-14---website-deployment-demonstration)
- [🐳 Docker Implementation](#-docker-implementation)
- [🔧 Pipeline Scripts](#-pipeline-scripts)
- [🐞 Troubleshooting](#-troubleshooting)
- [🔐 Security](#-security)
- [🧪 Testing and Validation](#-testing-and-validation)
- [📈 Advantages](#-advantages)
- [🚀 Future Enhancements](#-future-enhancements)
- [📚 Learning Outcomes](#-learning-outcomes)
- [🎓 Project Demonstration](#-project-demonstration)
- [✅ Final Checklist](#-final-checklist)
- [👨‍💻 Author](#-author)

---

# 📖 Project Overview

This project implements a complete **DevOps CI/CD lifecycle** for a web application using AWS EC2, Ubuntu Linux, Ansible, Jenkins, GitHub, GitHub Webhooks and Docker.

The application source code is maintained in GitHub. Developers work with two branches:

```text
develop
master
