# Application Security Project – Securing OWASP Juice Shop

## 📖 Table of Contents
* [📌 Overview](#-overview)
* [🎯 Objectives](#-objectives)
* [🧪 Vulnerabilities Covered](#-vulnerabilities-covered)
* [🛠️ Methodology](#-methodology)
* [📂 Project Structure](#-project-structure)
* [⚙️ Tech & Concepts](#️-tech--concepts)
* [🧠 Key Takeaway](#-key-takeaway)
* [📎 Author](#-author)

---

## 📌 Overview
This project demonstrates practical **Application Security (AppSec)** skills by analyzing and securing the intentionally vulnerable application OWASP Juice Shop.

The objective is to simulate a real-world AppSec workflow:
* **Identify** vulnerabilities
* **Exploit** them
* **Analyze** the root cause in source code
* **Propose** and implement secure fixes

---

## 🎯 Objectives
* Bridge the gap between **software development and security**
* Demonstrate **code-level vulnerability analysis**
* Apply **secure coding practices**
* Introduce **secure SDLC concepts**

---

## 🧪 Vulnerabilities Covered

### 1. DOM-Based Cross-Site Scripting (XSS)

---

## 🛠️ Methodology
For each vulnerability, the following process is applied:

1. **Discovery & Exploitation**: Identifying the entry point and confirming the flaw.
2. **Code Analysis**: Locating the specific lines of code responsible for the weakness.
3. **Remediation**: Implementing the industry-standard secure fix.
4. **Documentation**: Recording the impact and the "lesson learned."

---

## 📂 Project Structure
```text
appsec-juice-shop-project/
│
├── exploits/   # Vulnerability write-ups + Secure coding fixes
├── docs/       # Screenshots & supporting material
├── pipeline/   # Secure SDLC (CI/CD, SAST, etc.)
└── README.md
```

---

## ⚙️ Tech & Concepts
* **OWASP Top 10**: Alignment with industry-standard risk categories for web application security.
* **Secure Coding**: Leveraging framework-native security features (Angular, Node.js) to build resilient applications.
* **Vulnerability Research**: Manual exploration, payload crafting, and source code auditing.

---

## 🧠 Key Takeaway
This project focuses on understanding **why vulnerabilities exist in code** and how to fix them at the root, rather than only focusing on exploitation. By addressing the "why," we move from reactive patching to proactive secure development.

---

## 📎 Author
**Application Security Enthusiast** *Background in Computer Systems Engineering and Cybersecurity.*
