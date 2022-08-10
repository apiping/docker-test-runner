FROM ubuntu:20.04

ADD prepare.sh .
RUN chmod +x prepare.sh && ./prepare.sh

LABEL com.skitsanos.apiping.title="API Ping Runner"
LABEL com.skitsanos.apiping.description="API Ping Runner Utils required to run test cases"
LABEL com.skitsanos.apiping.vendor="Skitsanos"
LABEL version=1.0.0
