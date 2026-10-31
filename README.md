cat > README.md <<'EOF'
<div align="center">

# 🖥️ PH-Network-Troubleshooting-Lab

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1000&color=39FF14&center=true&vCenter=true&width=900&height=60&lines=LINUX+NETWORK+TROUBLESHOOTING;IT+SUPPORT+N2%2FN3+DIAGNOSTICS+LAB;BASH+%7C+TCP%2FIP+%7C+DNS+%7C+ICMP" alt="Animated terminal title" />

### `> Practical Linux Network Diagnostics & Troubleshooting Lab`

<br/>

![Version](https://img.shields.io/badge/VERSION-0.3.0-39D353?style=for-the-badge)
![Scenarios](https://img.shields.io/badge/TEST_SCENARIOS-03-FFD43B?style=for-the-badge)
![Platform](https://img.shields.io/badge/PLATFORM-UBUNTU%20%7C%20WSL2-E95420?style=for-the-badge)
![Status](https://img.shields.io/badge/LAB-OPERATIONAL-00C853?style=for-the-badge)

<br/>

![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=flat-square&logo=ubuntu&logoColor=white)
![WSL2](https://img.shields.io/badge/Environment-WSL2-0078D6?style=flat-square&logo=windows&logoColor=white)
![Bash](https://img.shields.io/badge/Shell-Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![TCP/IP](https://img.shields.io/badge/Networking-TCP%2FIP-2563EB?style=flat-square)
![DNS](https://img.shields.io/badge/Protocol-DNS-7C3AED?style=flat-square)
![ICMP](https://img.shields.io/badge/Protocol-ICMP-DC2626?style=flat-square)
![Git](https://img.shields.io/badge/Version_Control-Git-F05032?style=flat-square&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/Repository-GitHub-181717?style=flat-square&logo=github&logoColor=white)

</div>

---

## 🟢 `01 // PROJECT OVERVIEW`

A hands-on Linux infrastructure lab focused on **network troubleshooting, connectivity diagnostics, DNS investigation and technical evidence collection**.

The project demonstrates a structured troubleshooting workflow aligned with practical **IT Support N2/N3** activities.

> **Core workflow:** Inspect → Diagnose → Test → Analyze → Document.

The objective is not just to execute commands, but to interpret diagnostic results and distinguish a real network problem from an expected test outcome.

## 🧰 `02 // TECHNOLOGY STACK`

| Category | Tools and technologies |
|---|---|
| Operating system | Ubuntu 26.04.1 LTS |
| Environment | Windows Subsystem for Linux 2 (WSL2) |
| Shell | Bash |
| Network configuration | `ip`, `ip route` |
| Connectivity | `ping`, ICMP |
| DNS diagnostics | `getent`, `nslookup`, `dig` |
| Report generation | Bash, `tee`, `date` |
| Version control | Git and GitHub |

## ⚡ `03 // IMPLEMENTED CAPABILITIES`

- 🟢 **Network interface inspection** — interface status and IP configuration.
- 🟢 **Routing analysis** — default gateway and routing table inspection.
- 🟢 **DNS configuration inspection** — resolver configuration.
- 🟢 **IP connectivity testing** — ICMP echo requests and packet-loss analysis.
- 🟢 **DNS resolution testing** — hostname resolution using Linux tools.
- 🟢 **Resolver comparison** — local DNS resolver versus Cloudflare `1.1.1.1`.
- 🟢 **Automated diagnostics** — Bash script execution and report generation.
- 🟢 **Technical evidence** — saved reports and documented test scenarios.

## 💻 `04 // TERMINAL LAB`

A snapshot of the diagnostic results collected in the lab:

```text
┌─────────────────────────────────────────────────────┐
│  PH-NETWORK-TROUBLESHOOTING-LAB                      │
│  SYSTEM: UBUNTU 26.04.1 LTS | WSL2                   │
├─────────────────────────────────────────────────────┤
│                                                     │
│  $ network-diagnostics --run                        │
│                                                     │
│  [ OK ]  Interface eth0 .............. UP           │
│  [ OK ]  Default route ............... AVAILABLE    │
│  [ OK ]  Public IP 1.1.1.1 ........... REACHABLE    │
│  [ OK ]  Packet loss ................. 0%           │
│  [ OK ]  DNS cloudflare.com .......... RESOLVED     │
│                                                     │
│  $ connectivity-test --target 192.0.2.1             │
│                                                     │
│  [WARN]  ICMP response ............... NONE         │
│  [INFO]  Packet loss ................. 100%         │
│  [INFO]  TEST-NET-1 reserved address .. EXPECTED    │
│                                                     │
├─────────────────────────────────────────────────────┤
│  RESULT: DIAGNOSTIC TESTS COMPLETED                  │
│  EVIDENCE: SAVED                                     │
└─────────────────────────────────────────────────────┘
