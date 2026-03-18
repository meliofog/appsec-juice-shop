\# Secure SDLC \& Pipeline Overview



This folder demonstrates \*\*how security integrates into a software development lifecycle (SDLC)\*\*. 



Even though this project uses lab code (OWASP Juice Shop), these files show how vulnerabilities could be \*\*detected and prevented automatically\*\* in a real project.



\---



\## Secure SDLC Steps



1\. \*\*Code Commit\*\*

&#x20;  - Developers follow secure coding standards.



2\. \*\*Static Analysis (SAST)\*\*

&#x20;  - Automatic scans for unsafe DOM usage, XSS, SQLi, and other vulnerabilities.

&#x20;  - Example tool: \[Semgrep](https://semgrep.dev/)



3\. \*\*Dependency Scanning\*\*

&#x20;  - Auditing third-party packages for known vulnerabilities.

&#x20;  - Example: `npm audit` for JavaScript projects.



4\. \*\*Code Review\*\*

&#x20;  - Manual peer review ensures security practices are enforced.



5\. \*\*Deployment\*\*

&#x20;  - Only allowed if all scans pass successfully.



\---



\## Relation to Project Vulnerabilities



\- \*\*DOM XSS\*\* could have been flagged by static analysis rules for Angular unsafe DOM methods.

\- The combination of automated scans + manual review ensures \*\*defense-in-depth\*\*.



