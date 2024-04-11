FROM        debian:12.5-slim
USER        root
WORKDIR     /
COPY        entrypoint.sh /entrypoint.sh
RUN         apt-get update && \
            apt-get install -y cron && \
            apt-get -y autoclean && \
            chmod +x /entrypoint.sh && \
            mkdir /mnt/scripts 
ENTRYPOINT  ["/entrypoint.sh"]
CMD         ["cron", "-f"]
