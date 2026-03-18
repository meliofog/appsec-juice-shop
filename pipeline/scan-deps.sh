#!/bin/bash
# pipeline/scan-deps.sh
# Software Composition Analysis (SCA) for Node.js projects

echo "========================================"
echo " Starting Dependency Security Scan (SCA)"
echo "========================================"

# Check if package.json exists
if [ -f package.json ]; then
  echo "[+] package.json found. Installing dependencies..."

  npm install

  echo "[+] Running npm audit (moderate level and above)..."

  npm audit --audit-level=moderate

  echo "[✓] Dependency scan completed."

else
  echo "[!] No package.json found."
  echo "[!] Skipping dependency scan (demo mode)."
fi

echo "========================================"
echo " Scan finished"
echo "========================================"
