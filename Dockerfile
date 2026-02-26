# base image
FROM ubuntu:22.04

# installing required dependencies
RUN apt-get update && \
        apt-get -y install \
	bash

# setting work directory
WORKDIR /app

# copy script
COPY monitor.sh .

# make script executable
RUN chmod +x monitor.sh

# default entrypoint
ENTRYPOINT ["./monitor.sh"]

# allowing to pass log file as arguments
CMD []
