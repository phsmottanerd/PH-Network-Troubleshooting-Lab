#!/bin/bash

# ==========================================
# PH-Troubleshooting
# Network Diagnostics Tool
# Author: PH
# ==========================================

REPORT_DIR="$HOME/PH-Troubleshooting/reports"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
REPORT_FILE="$REPORT_DIR/network_report_$TIMESTAMP.txt"

mkdir -p "$REPORT_DIR"

exec > >(tee "$REPORT_FILE") 2>&1

echo "=========================================="
echo "       PH NETWORK DIAGNOSTICS"
echo "=========================================="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo

echo "========== NETWORK INTERFACES =========="
ip -brief address
echo

echo "========== ROUTING TABLE =========="
ip route
echo

echo "========== DNS CONFIGURATION =========="
cat /etc/resolv.conf
echo

echo "========== INTERNET CONNECTIVITY =========="
if ping -c 4 -W 2 1.1.1.1; then
    echo "[OK] IP connectivity is working."
else
    echo "[WARNING] Could not reach 1.1.1.1."
fi
echo

echo "========== DNS RESOLUTION =========="
if getent hosts cloudflare.com; then
    echo "[OK] DNS resolution is working."
else
    echo "[WARNING] DNS resolution failed."
fi
echo

echo "=========================================="
echo "Diagnostic completed."
echo "Report saved to: $REPORT_FILE"
echo "=========================================="
