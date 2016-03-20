FROM ubuntu:14.04

WORKDIR /mattermost

RUN apt-get update && apt-get install -y ruby
# Copy over files
ADD https://releases.mattermost.com/2.1.0-rc1/mattermost-team-2.1.0-rc1-linux-amd64.tar.gz /
RUN tar -zxvf /mattermost-team-2.1.0-rc1-linux-amd64.tar.gz --strip-components=1 && rm /mattermost-team-2.1.0-rc1-linux-amd64.tar.gz
ADD config_docker.json.erb /
ADD docker-entry.sh /
ADD init-config.sh /

RUN chmod +x /docker-entry.sh
RUN chmod +x /init-config.sh
ENTRYPOINT ["/docker-entry.sh"]

# Create default storage directory
RUN mkdir /mattermost-data/
VOLUME /mattermost-data
VOLUME /mattermost/config
# Ports
EXPOSE 80
