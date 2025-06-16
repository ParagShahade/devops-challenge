import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  scenarios: {
    ramping_load: {
      executor: 'ramping-arrival-rate',
      startRate: 100,          // start at 100 RPS
      timeUnit: '1s',
      preAllocatedVUs: 200,    // pool of ready VUs
      maxVUs: 1000,            // cap on VUs
      stages: [
        { target: 300, duration: '10s' },
        { target: 600, duration: '10s' },
        { target: 1000, duration: '10s' }, // ramp to 1000 RPS
      ],
    },
  },
  thresholds: {
    // 95% of requests should be faster than 500ms
    http_req_duration: ['p(95)<500'],
    // Less than 1% should fail
    http_req_failed: ['rate<0.01'],
    // At least 99% of checks must pass
    checks: ['rate>0.99'],
  },
};

export default function () {
  const url = 'http://34.79.127.211/https://jsonplaceholder.typicode.com/posts/1';

  const res = http.get(url, {
    headers: {
      'Origin': 'https://example.com',
    },
  });

  check(res, {
    'status is 200': (r) => r.status === 200,
  });

  sleep(1); // Prevent VUs from hammering too tightly
}