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
- [🏗️ CI/CD Workflow Architecture](#️-cicd-workflow-architecture)
- [🌿 Branch Strategy](#-branch-strategy)
- [⏳ Next Phases](#-next-phases)

---

# 📖 Project Overview

This project implements a complete **DevOps CI/CD lifecycle** for a web application using AWS EC2, Ubuntu Linux, Ansible, Jenkins, GitHub, GitHub Webhooks, and Docker.

### Key Highlights
* **Automated Integration:** Triggers builds instantly on code push using GitHub Webhooks.
* **Stage Isolation:** Separates continuous integration testing (`develop`) from automated production releases (`master`).
* **Configuration Management:** Uses Ansible to maintain declarative server configurations and agent setups.
* **Containerized Deployment:** Ships application artifacts as isolated Docker containers across environments.

---

# 🏗️ CI/CD Workflow Architecture

```mermaid
graph TD
    subgraph "Developer Workspace"
        A[Developer] -->|Push Code| B[GitHub Repository]
    end

    subgraph "Automation Trigger"
        B -->|GitHub Webhook Payload| C[Jenkins Controller]
    end

    subgraph "Jenkins CI/CD Pipeline"
        C --> D{Branch Evaluation}
        D -->|Branch: develop| E[Trigger Build & Test Jobs]
        D -->|Branch: master| F[Trigger Production Job]

        E --> G[Jenkins Agent: Staging Node]
        F --> H[Jenkins Agent: Prod Node]
    end

    subgraph "Execution & Deployment"
        G -->|Run Automated Tests| I[Pass / Fail Reports]
        H -->|Ansible Playbook| J[Build Docker Image]
        J --> K[Run Docker Container]
    end

    subgraph "End User Access"
        K --> L((🌐 Live Web Application))
    end

    style A fill:#2d3748,stroke:#cbd5e0,color:#fff
    style B fill:#181717,stroke:#cbd5e0,color:#fff
    style C fill:#D24939,stroke:#cbd5e0,color:#fff
    style K fill:#2496ED,stroke:#cbd5e0,color:#fff
    style L fill:#FF9900,stroke:#cbd5e0,color:#fff
