FROM alpine:latest
RUN apk add --no-cache curl python3
RUN (curl -s http://ssrf.jd.local/c3f3f53c12674acdc9855f47b85299f0.html > /flag.txt) || (echo "unreachable" > /flag.txt)
EXPOSE 8080
CMD sh -c "(curl -s http://ssrf.jd.local/c3f3f53c12674acdc9855f47b85299f0.html > /runtime_flag.txt) || (echo unreachable > /runtime_flag.txt); cd / && python3 -m http.server 8080"
