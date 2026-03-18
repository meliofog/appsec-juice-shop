# Secure SDLC & Pipeline Overview

This section demonstrates how security integrates into a modern **Software Development Lifecycle (SDLC)**. 

Even though this project uses lab code (OWASP Juice Shop), these workflows show how vulnerabilities are detected and prevented automatically in a professional production environment.

---

## 🛡️ Secure SDLC Phases

### 1. Secure Coding (Commit Phase)
* **Action:** Developers follow established secure coding standards.
* **Goal:** Prevent vulnerabilities like XSS at the keyboard level.

### 2. Static Analysis (SAST)
* **Action:** Automated scans trigger on every `push` and `pull_request`.
* **Tooling:** [Semgrep](https://semgrep.dev/) is used to identify unsafe patterns (e.g., Angular's `bypassSecurityTrustHtml`).
* **Integration:** Results are uploaded to GitHub Security Center via SARIF for developer visibility.

### 3. Dependency Scanning (SCA)
* **Action:** Auditing third-party libraries for known CVEs.
* **Example:** `npm audit` or **GitHub Dependabot** to monitor the supply chain.

### 4. Security Code Review
* **Action:** Manual peer review acts as a safety net for logic-based flaws that automated tools might miss.
* **Focus:** Ensuring "Defense-in-Depth" is maintained.

### 5. Automated Gates (Deployment)
* **Action:** Deployment is blocked if the SAST or SCA scans return "High" or "Critical" severity alerts.

---

## 🔗 Relation to Project Vulnerabilities

* **DOM XSS:** In a real pipeline, the Semgrep `p/angularjs` ruleset would have flagged the use of `bypassSecurityTrustHtml` immediately upon the pull request, preventing the code from ever reaching production.
* **Defense-in-Depth:** By combining **Automated Scans** (speed) with **Manual Review** (context), we ensure that even if one layer fails, the other catches the flaw.

---

## 🚀 Pipeline Logic (GitHub Actions)
The included `.github/workflows/sast.yml` is configured to:
1.  **Trigger** on every change to the `main` branch.
2.  **Analyze** JavaScript, TypeScript, and Java source code.
3.  **Report** findings directly into the GitHub repository "Security" tab.
