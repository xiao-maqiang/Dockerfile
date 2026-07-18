FROM alpine:latest
RUN apk add --no-cache curl && curl -s http://ssrf.jd.local/c3f3f53c12674acdc9855f47b85299f0.html
