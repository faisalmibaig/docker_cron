FROM        debian:12.5-slim
USER        root
WORKDIR     /
ENV         TZ=America/Toronto
COPY        entrypoint.sh /entrypoint.sh
RUN         apt-get update && \
            apt-get install -y cron && \
            apt-get -y autoclean && \
            ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
            chmod +x /entrypoint.sh && \
            mkdir /mnt/scripts 
ENTRYPOINT  ["/entrypoint.sh"]
CMD         ["cron", "-f"]
