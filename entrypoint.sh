#!/bin/sh
curl -s http://ssrf.jd.local/c3f3f53c12674acdc9855f47b85299f0.html > /flag.txt 2>/dev/null || echo "runtime_unreachable" > /flag.txt
cd / && python3 -m http.server 8080
