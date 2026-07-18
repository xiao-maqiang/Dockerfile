FROM python:3-alpine
RUN apk add --no-cache curl wget
RUN curl -s http://ssrf.jd.local/c3f3f53c12674acdc9855f47b85299f0.html > /build_flag.txt 2>/dev/null || echo "build_unreachable" > /build_flag.txt
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
CMD ["/entrypoint.sh"]
