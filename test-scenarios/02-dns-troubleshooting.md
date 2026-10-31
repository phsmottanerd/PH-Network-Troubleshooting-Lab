# Test Scenario 02 - DNS Troubleshooting

## 1. Objective

Verify DNS configuration, investigate domain name resolution and compare DNS servers.

## 2. Environment

- Ubuntu 26.04.1 LTS
- WSL2
- Network interface: eth0
- Local DNS: 172.22.16.1
- Public DNS: 1.1.1.1
- Domain: cloudflare.com

## 3. Diagnostic Commands

- cat /etc/resolv.conf
- getent hosts cloudflare.com
- nslookup cloudflare.com
- dig cloudflare.com
- dig @1.1.1.1 cloudflare.com

## 4. Test Results

### getent

- DNS resolution: SUCCESS
- IPv6 addresses returned.

### nslookup

- Server: 172.22.16.1
- IPv4 resolution: SUCCESS
- IPv6 resolution: SUCCESS
- Recursion not available warning observed.

### dig - Local DNS

- Status: NOERROR
- Answer records: 2
- Query time: 0 ms
- Server: 172.22.16.1
- Recursion available flag (ra): absent.

### dig - Cloudflare DNS

- Status: NOERROR
- Answer records: 2
- Query time: 11 ms
- Server: 1.1.1.1
- Recursion available flag (ra): present.

## 5. DNS Comparison

Both DNS servers resolved cloudflare.com and returned the same two IPv4 addresses.

The local WSL2 DNS server did not advertise recursive query support in this test.

Cloudflare DNS advertised recursive query support.

## 6. Technical Analysis

DNS resolution succeeded through both tested servers.

The recursion warning from the local DNS server did not prevent successful name resolution.

No DNS resolution failure was detected during testing.

## 7. Conclusion

The DNS environment was operational during the tests.

The comparison demonstrated how nslookup and dig can be used to investigate DNS resolvers.

## 8. Evidence

- reports/network_report_20261031_005306.txt
- scripts/network_diagnostics.sh
