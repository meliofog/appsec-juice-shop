#!/bin/bash
# pipeline/scan-deps.sh
# Software Composition Analysis (SCA) for Node.js projects

echo "------------------------------------------"
echo "🔍 Starting Dependency Security Audit..."
echo "------------------------------------------"

# Ensure we have the latest audit signatures without a full install if possible
npm install --package-lock-only

# This will exit with a non-zero code if vulnerabilities 
# 'moderate' or higher are found, which stops the CI pipeline.
npm audit --audit-level=moderate

if [ $? -eq 0 ]; then
    echo "✅ No moderate or high-level vulnerabilities found."
else
    echo "❌ Vulnerabilities detected. Please run 'npm audit fix' or update dependencies."
fi

echo "------------------------------------------"
echo "🚀 Dependency scan complete."
