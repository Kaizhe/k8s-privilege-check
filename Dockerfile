FROM kaizheh/kube-psp-advisor:1.6.0
ADD ./entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
