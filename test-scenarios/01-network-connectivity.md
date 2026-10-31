# Test Scenario 01 - Network Connectivity

## 1. Objective

Verify Linux network connectivity and identify possible network communication problems.

## 2. Environment

- Operating System: Ubuntu 26.04.1 LTS
- Platform: WSL2
- Network Interface: eth0

## 3. Diagnostic Commands

### Check network interfaces
ip -brief address

### Check routing table
ip route

### Check connectivity using ICMP
ping -c 4 1.1.1.1

### Check DNS resolution
getent hosts cloudflare.com

## 4. Expected Results

- Network interface should be UP.
- A valid IP address should be assigned.
- A default gateway should be configured.
- Ping should receive responses.
- DNS should resolve the domain name.

## 5. Actual Test Results

- Interface: eth0 UP
- IP address: 172.22.20.62/20
- Default gateway: 172.22.16.1
- Ping: 4 packets received.
- Packet loss: 0%.
- Average latency: 11.059 ms.
- DNS resolution: SUCCESS.

## 6. Conclusion

The initial diagnostic confirmed IP connectivity and DNS resolution in the tested WSL2 environment.

No connectivity failure was detected during this test.

## 7. Evidence

Diagnostic report:

reports/network_report_20261031_005306.txt

Diagnostic script:

scripts/network_diagnostics.sh
