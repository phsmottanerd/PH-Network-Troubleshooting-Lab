# PH-Troubleshooting - Changelog

Registro oficial da evolução do projeto.

## [0.1.0] - 2026-10-31

### Added
- Created the initial project directory structure.
- Implemented the Bash network diagnostics script.
- Added network interface inspection.
- Added IP address and routing table checks.
- Added DNS configuration inspection.
- Added internet connectivity test using ping.
- Added DNS resolution test using getent.
- Implemented automatic diagnostic report generation.
- Executed the first successful network diagnostic.

### Test Results
- Network interface: eth0 UP
- IP address: 172.22.20.62/20
- Default gateway: 172.22.16.1
- Ping to 1.1.1.1: 0% packet loss
- Average latency: 11.059 ms
- DNS resolution: SUCCESS

### Documentation
- Created the main README.md.
- Recorded the initial test results.
- Documented the project structure and objectives.

### Report
- reports/network_report_20261031_005306.txt

## [0.2.0] - 2026-10-31

### Added
- Created DNS troubleshooting test scenario.
- Added DNS configuration inspection.
- Added domain resolution tests using getent.
- Added DNS query tests using nslookup.
- Added DNS query analysis using dig.
- Compared local WSL2 DNS (172.22.16.1) with Cloudflare DNS (1.1.1.1).

### Test Results
- Local DNS resolution: SUCCESS.
- Cloudflare DNS resolution: SUCCESS.
- Both servers returned two IPv4 records for cloudflare.com.
- Local DNS did not advertise recursion availability in the tested response.
- Cloudflare DNS advertised recursion availability.
- No DNS resolution failure detected.

### Documentation
- Updated test-scenarios/02-dns-troubleshooting.md.

## [0.3.0] - 2026-10-31

### Added
- Connectivity failure diagnosis scenario.
- Public IP connectivity validation.
- Test against reserved documentation address 192.0.2.1.
- DNS resolution verification.
- Captured diagnostic evidence.

### Results
- Public connectivity: 0% packet loss.
- Reserved destination: 100% packet loss, expected.
- DNS resolution: successful.
- No network configuration changes performed.
