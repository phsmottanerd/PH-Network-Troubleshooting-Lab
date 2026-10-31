

# PH-Troubleshooting

Professional Network Troubleshooting Lab

## Project Overview

Linux network diagnostics project focused on practical IT Support N2/N3 troubleshooting.

## Technologies

- Ubuntu Linux
- WSL2
- Bash
- TCP/IP
- DNS
- ICMP

## Implemented Features

- Network interface inspection
- IP address verification
- Routing table inspection
- DNS configuration inspection
- Internet connectivity testing
- DNS resolution testing
- Automatic report generation

## Version History

### v0.1 - Initial Network Diagnostics

Date: 2026-10-31

- Project structure created.
- Bash diagnostic script implemented.
- Network connectivity tested.
- DNS resolution tested.
- First diagnostic report generated.

## Initial Test Results

- Interface: eth0 UP
- IP: 172.22.20.62/20
- Gateway: 172.22.16.1
- Packet loss: 0%
- Average latency: 11.059 ms
- DNS: SUCCESS

Report: reports/network_report_20261031_005306.txt

## Project Goals

- Develop network troubleshooting skills.
- Automate Linux diagnostics.
- Simulate N2/N3 support scenarios.
- Maintain technical evidence.
- Build a professional IT portfolio.

## Test Scenario 03 - Connectivity Failure Diagnosis

The third scenario validates connectivity to a public IP, tests an unreachable reserved documentation address, and checks DNS resolution.

### Observed Results

- Network interface eth0: UP
- IPv4 address: 172.22.20.62/20
- Default gateway: 172.22.16.1
- Public connectivity to 1.1.1.1: 4 packets received, 0% packet loss
- Reserved address 192.0.2.1: 100% packet loss, as expected
- DNS resolution for cloudflare.com: successful

### Technical Conclusion

Public IP connectivity and DNS resolution were operational during the test. The lack of response from the reserved documentation address does not indicate a general network failure.

Evidence: evidence/connectivity_failure_20261031_024357.txt
