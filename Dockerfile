FROM ibmcom/db2express-c:10.5.0.5-3.10.0

RUN useradd demo
RUN echo "demo:demo" | chpasswd

COPY entrypoint.sh /
COPY init.sql /

ENTRYPOINT ["/entrypoint.sh"]
