# Test Scenario 03 - Connectivity Failure Diagnosis

## Objective

Investigate an unreachable network destination using Linux diagnostic tools.

## Environment

- Ubuntu 26.04.1 LTS
- WSL2
- Network interface: eth0

## Diagnostic Commands

- ip -brief address
- ip route
- ping -c 4 1.1.1.1
- ping -c 4 192.0.2.1
- getent hosts cloudflare.com

## Test Strategy

1. Inspect network interface status.
2. Verify IP configuration.
3. Inspect the default gateway.
4. Test public IP connectivity.
5. Test a reserved documentation IP.
6. Verify DNS resolution.

## Expected Analysis

192.0.2.1 belongs to a reserved documentation network and is not expected to respond as a public destination.

An unsuccessful ping to this address alone does not indicate a general network failure.

## Safety

No network configuration changes are performed.
