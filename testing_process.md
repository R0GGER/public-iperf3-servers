# Testing Process

In this document, I outline exactly how I evaluate servers before adding them to [iperf3serverlist.net](https://iperf3serverlist.net) and [github.com/R0GGER/public-iperf3-servers](https://github.com/R0GGER/public-iperf3-servers) and how I continuously monitor them.

## Acceptance

Before a server is added to the public list, it must pass a comprehensive testing process:

1. **Initial Testing Phase**
   - Successful ping test (10s timeout)
   - Port accessibility verification
   - iPerf3 performance test

2. **Monitoring Period**
   - 30-day observation period
   - Minimum 90% uptime requirement
   - Consistent performance across all tests

**Test Enviroment**
[pending.iperf3serverlist.net](https://pending.iperf3serverlist.net)

## Monitoring

All listed servers undergo:
- Weekly automated testing
- 15-minute interval uptime checks
- Full performance testing suite

## Removal

In my commitment to maintaining a reliable server list, I remove servers that:
- Drop below 90% uptime in a 30-day period, [uptime.iperf3serverlist.net](https://uptime.iperf3serverlist.net/) 
- Fail consecutive automated tests
- Show persistent connectivity issues
- Port accessibility problems
- Display significant performance degradation

## Test Results

- Uptime monitoring: [uptime.iperf3serverlist.net](https://uptime.iperf3serverlist.net/)
- Raw test results: [test.iperf3serverlist.net](https://test.iperf3serverlist.net)
- Raw pending test results: [pending.iperf3serverlist.net](https://pending.iperf3serverlist.net)
- Results are filtered and analyzed in NocoDB. View the results under the list: [PENDING](https://db.iperf3serverlist.net/dashboard/#/nc/view/eef5bfe2-916c-45fe-b4cc-1c9e510ae422)

## Test Environment

I perform all tests from my dedicated testing environment:
- [HostHatch](https://cloud.hosthatch.com/a/772) VPS 
- Debian 12
- 4 CPU cores (2 dedicated, 2 fair-shared)
- 16 GB DDR4 RAM
- 10GB/s network connectivity
- Location: Amsterdam, NL

## Thank you

This project is sponsored and supported by [**HostHatch**](https://cloud.hosthatch.com/a/772) and [**Censys**](https://censys.com/).
